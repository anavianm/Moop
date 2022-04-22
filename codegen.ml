(* Code generation: translate takes a semantically checked AST and
produces LLVM IR

LLVM tutorial: Make sure to read the OCaml version of the tutorial

http://llvm.org/docs/tutorial/index.html

Detailed documentation on the OCaml LLVM library:

http://llvm.moe/
http://llvm.moe/ocaml/

*)

(* We'll refer to Llvm and Ast constructs with module names *)
module L = Llvm
module A = Ast
open Sast 

module StringMap = Map.Make(String)

(* Code Generation from the SAST. Returns an LLVM module if successful,
   throws an exception if something is wrong. *)

let translate (classes) = 
  let context    = L.global_context () in
  (* Add types to the context so we can use them in our LLVM code *)
  let i32_t      = L.i32_type      context 
  and i8_t       = L.i8_type       context 
  and i1_t       = L.i1_type       context 
  and float_t    = L.double_type   context 
  and void_t     = L.void_type     context 
  and string_t   = L.pointer_type  (L.i8_type context) 
  (* and class_t    = L.pointer_type  context *)

  (* Create an LLVM module -- this is a "container" into which we'll 
     generate actual code *)
  and the_module = L.create_module context "MicroOOP" in

  let class_types : (L.lltype * scdecl) StringMap.t = 
    (* Create class types *)
    let create_class_types m cdecl = 
      let name = cdecl.scname in 
      let class_type = L.named_struct_type context name in
      StringMap.add name (class_type, cdecl) m in 
    List.fold_left create_class_types StringMap.empty classes in

  (* Convert MicroC types to LLVM types *)
  let ltype_of_typ = function
      A.Int      -> i32_t
    | A.Bool     -> i1_t
    | A.Float    -> float_t
    | A.Str      -> string_t
    | A.Void     -> void_t
    | A.ClassT (name)  -> fst (StringMap.find name class_types)
  in

  let printf_t : L.lltype = 
    L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
  let printf_func : L.llvalue =   
    L.declare_function "printf" printf_t the_module in

 

  (* Set types of instance variables for each class struct *)
  (* Set class bodies *)
  let _ = 
    let set_class_body cdecl = 
      let (class_type, _) = StringMap.find cdecl.scname class_types in
      let body_type  = Array.of_list (List.map (fun x -> ltype_of_typ x.sityp) cdecl.sfields) in
      L.struct_set_body class_type body_type false in
  List.map set_class_body classes in

  
  (* ========== DUMMY MAIN ========== *)
  let dummy_main_t = L.function_type i32_t [||] in
  let dummy_main = L.define_function "main" dummy_main_t the_module in
  (* Dummy main pointer *)
  let _ = L.define_global "main_ptr" dummy_main the_module in
  let dummy_main_builder = L.builder_at_end context (L.entry_block dummy_main) in


  (* ========== METHOD DECLS ========== *)
  (* Define stringmap for method declarations*)
  let method_decls : (L.llvalue * smdecl) StringMap.t = 
    (* Get class of method *)
    let get_class_method m cdecl = 
      let method_decl m mdecl = 
        (* String map key is the class name + method name *)
        let name = cdecl.scname ^ mdecl.sfname in let _ = print_string (name)
        and formal_types = 
          Array.of_list(List.map (fun (t,_) -> ltype_of_typ t) mdecl.sformals) in
        let mtype = L.function_type (ltype_of_typ mdecl.styp) formal_types in
        StringMap.add name (L.define_function name mtype the_module, mdecl) m
      in
    List.fold_left method_decl m cdecl.smethods in
    (* Fold over the list of classes *)
  List.fold_left get_class_method StringMap.empty classes in

  
  let build_class_method_bodies cdecl = 
    let build_method_body mdecl = 
      let (the_method, _) = StringMap.find (cdecl.scname ^ mdecl.sfname) method_decls in
      let builder = L.builder_at_end context (L.entry_block the_method) in

      let int_format_str = L.build_global_stringptr "%d\n" "fmt" builder
      and float_format_str = L.build_global_stringptr "%g\n" "fmt" builder
      and string_format_str = L.build_global_stringptr "%s\n" "fmt" builder in
  
      (* =========== LOCAL VARIABLES =========== *)
      let local_vars =
        let add_formal m (t, n) p = 
          let () = L.set_value_name n p in
          let local = L.build_alloca (ltype_of_typ t) n builder in
          let _  = L.build_store p local builder in
            StringMap.add n local m 
        in    
          (* Allocate space for any locally declared variables and add the
          * resulting registers to our map *)
        let add_local m (t, n) =
          let local_var = L.build_alloca (ltype_of_typ t) n builder in 
            StringMap.add n local_var m 
        in
        (* =========== FORMAL VARIABLES ========== *)
        let formals = List.fold_left2 add_formal StringMap.empty mdecl.sformals
            (Array.to_list (L.params the_method)) in
        List.fold_left add_local formals mdecl.slocals 
      in
          
      (* Return the value for a variable or formal argument. First check
       * locals, then globals *)
      let lookup n = StringMap.find n local_vars
      in

      (* ============  EXPRS  ============ *)
      (* Construct code for an expression; return its value *)
      let rec expr builder ((_, e) : sexpr) = match e with
        SLiteral i -> L.const_int i32_t i
        | SBoolLit b -> L.const_int i1_t (if b then 1 else 0)
        | SFliteral l -> L.const_float_of_string float_t l
        | SStringLit l -> L.build_global_stringptr (Scanf.unescaped l) "str" builder
        | SNoexpr -> L.const_int i32_t 0
        | SId s -> L.build_load (lookup s) s builder
        | SAssign (s, e) -> let e' = expr builder e in
                            let _  = L.build_store e' (lookup s) builder in e'
        | SBinop (e1, op, e2) ->
          let (t, _) = e1
          and e1' = expr builder e1
          and e2' = expr builder e2 in
            if t = A.Float then (match op with 
              A.Add     -> L.build_fadd
            | A.Sub     -> L.build_fsub
            | A.Mult    -> L.build_fmul
            | A.Div     -> L.build_fdiv 
            | A.Equal   -> L.build_fcmp L.Fcmp.Oeq
            | A.Neq     -> L.build_fcmp L.Fcmp.One
            | A.Less    -> L.build_fcmp L.Fcmp.Olt
            | A.Leq     -> L.build_fcmp L.Fcmp.Ole
            | A.Greater -> L.build_fcmp L.Fcmp.Ogt
            | A.Geq     -> L.build_fcmp L.Fcmp.Oge
            | A.And | A.Or ->
                raise (Failure "internal error: semant should have rejected and/or on float")
            ) e1' e2' "tmp" builder 
            else (match op with
            | A.Add     -> L.build_add
            | A.Sub     -> L.build_sub
            | A.Mult    -> L.build_mul
            | A.Div     -> L.build_sdiv
            | A.And     -> L.build_and
            | A.Or      -> L.build_or
            | A.Equal   -> L.build_icmp L.Icmp.Eq
            | A.Neq     -> L.build_icmp L.Icmp.Ne
            | A.Less    -> L.build_icmp L.Icmp.Slt
            | A.Leq     -> L.build_icmp L.Icmp.Sle
            | A.Greater -> L.build_icmp L.Icmp.Sgt
            | A.Geq     -> L.build_icmp L.Icmp.Sge
            ) e1' e2' "tmp" builder
        | SUnop(op, e) ->
          let (t, _) = e in
            let e' = expr builder e in
            (match op with
              A.Neg when t = A.Float -> L.build_fneg 
            | A.Neg                  -> L.build_neg
            | A.Not                  -> L.build_not
            (* TODO: don't use build_not *)
            | _                      -> L.build_not) e' "tmp" builder
        | SCall ("printi", [e]) | SCall ("printb", [e]) ->
          L.build_call printf_func [| int_format_str ; (expr builder e) |]
            "printf" builder
        | SCall ("printf", [e]) -> 
          L.build_call printf_func [| float_format_str ; (expr builder e) |]
            "printf" builder
        | SCall ("print", [e]) -> 
          L.build_call printf_func [| string_format_str; (expr builder e) |]
            "printf" builder
        | SCall (f, args) ->
          let (fdef, fdecl) = StringMap.find (cdecl.scname ^ f) method_decls in 
            let llargs = List.rev (List.map (expr builder) (List.rev args)) in
            let result = (match fdecl.styp with 
                                  A.Void -> ""
                                | _ -> f ^ "_result") in
                  L.build_call fdef (Array.of_list llargs) result builder
        (* | SConcall (c, args) -> 
            let (cdef, cdecl) = StringMap.find (c ^ c) method_decls in 
              let llargs = List.rev (List.map (expr builder) (List.rev args)) in
              let result =  c ^ "_result" in *)
                
        (* TODO: add more expr cases anremove this after adding all cases *)
        | _ -> L.const_int i32_t 0
        
      in


      (* =========== STATEMENTS =========== *)
      let add_terminal builder instr =
        (* The current block where we're inserting instr *)
        match L.block_terminator (L.insertion_block builder) with
        Some _ -> ()
        | None -> ignore (instr builder) in
      
      let rec stmt builder = function
      	SBlock sl -> List.fold_left stmt builder sl
        (* Generate code for this expression, return resulting builder *)
      | SExpr e   -> let _ = expr builder e in builder 
      | SNostmt   -> builder
      | SReturn e -> let _ = match mdecl.styp with
                              (* Special "return nothing" instr *)
                              A.Void -> L.build_ret_void builder 
                              (* Build return statement *)
                            | _ -> L.build_ret (expr builder e) builder 
                     in builder
      | SIf (predicate, then_stmt, else_stmt) ->
          let bool_val = expr builder predicate in
          (* Add "merge" basic block to our function's list of blocks *)
            let merge_bb = L.append_block context "merge" the_method in
            (* Partial function used to generate branch to merge block *) 
            let branch_instr = L.build_br merge_bb in

              (* Same for "then" basic block *)
            let then_bb = L.append_block context "then" the_method in
              (* Position builder in "then" block and build the statement *)
            let then_builder = stmt (L.builder_at_end context then_bb) then_stmt in
              (* Add a branch to the "then" block (to the merge block) 
                if a terminator doesn't already exist for the "then" block *)
          let () = add_terminal then_builder branch_instr in

              (* Identical to stuff we did for "then" *)
          let else_bb = L.append_block context "else" the_method in
              let else_builder = stmt (L.builder_at_end context else_bb) else_stmt in
          let () = add_terminal else_builder branch_instr in

              (* Generate initial branch instruction perform the selection of "then"
              or "else". Note we're using the builder we had access to at the start
              of this alternative. *)
          let _ = L.build_cond_br bool_val then_bb else_bb builder in
              (* Move to the merge block for further instruction building *)
          L.builder_at_end context merge_bb

      | SWhile (predicate, body) ->
        (* First create basic block for condition instructions -- this will
        serve as destination in the case of a loop *)
        let pred_bb = L.append_block context "while" the_method in
              (* In current block, branch to predicate to execute the condition *)
        let _ = L.build_br pred_bb builder in

        (* Create the body's block, generate the code for it, and add a branch
        back to the predicate block (we always jump back at the end of a while
        loop's body, unless we returned or something) *)
        let body_bb = L.append_block context "while_body" the_method in
              let while_builder = stmt (L.builder_at_end context body_bb) body in
        let () = add_terminal while_builder (L.build_br pred_bb) in

              (* Generate the predicate code in the predicate block *)
        let pred_builder = L.builder_at_end context pred_bb in
        let bool_val = expr pred_builder predicate in

              (* Hook everything up *)
        let merge_bb = L.append_block context "merge" the_method in
        let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in
        L.builder_at_end context merge_bb

      (* Implement for loops as while loops! *)
      | SFor (e1, e2, e3, body) -> stmt builder
        ( SBlock [SExpr e1 ; SWhile (e2, SBlock [body ; SExpr e3]) ] )
      in

      let builder = stmt builder (SBlock mdecl.sbody) in


      
      (* Add a return if the last block falls off the end *)
      add_terminal builder (match mdecl.styp with
          A.Void   -> L.build_ret_void
        | A.Float  -> L.build_ret (L.const_float float_t 0.0)
        | A.Str    -> L.build_ret (L.build_global_stringptr (Scanf.unescaped "") "str" builder)
        (* | A.Str    -> L.build_ret (L.const_string string_t "") *)
        | t -> L.build_ret (L.const_int (ltype_of_typ t) 0))    
    in
    List.map build_method_body cdecl.smethods in
  
  let _ = List.map build_class_method_bodies classes in


(* =========== ADD MAIN METHOD CALL =========== *)
(* Dummy main method will have a call to class Main's main method. *)
let _ =
let (fdef, fdecl) = StringMap.find "Mainmain" method_decls in 
let llargs = [] in
let result = (match fdecl.styp with 
                      A.Void -> ""
                    | _ ->  "Mainmain_result") in
      L.build_call fdef (Array.of_list llargs) result dummy_main_builder
in
let instr = L.build_ret (L.const_int i32_t 0) in
let _ =
  match L.block_terminator (L.insertion_block dummy_main_builder) with
    Some _ -> ()
    | None -> ignore (instr dummy_main_builder) 
in


L.print_module "tests/test.ll" the_module;
the_module