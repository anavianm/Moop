
(* Top-level of the MicroC compiler: scan & parse the input,
  check the resulting AST and generate an SAST from it, generate LLVM IR,
  and dump the module *)
[@@@warning "-70"]
type action = Ast | Sast | Compile | LLVM_IR 

(* let () =
  let action = ref Compile in
  let set_channel channel filename =
     let file =
        try open_in filename with
            | Sys_error s ->
                  let _ = print_endline s in
                  exit 1
            in *)
  (* let set_action a () = action := a in *)
  let () =
      let action = ref Compile in
      let channel = ref stdin in
      let set_action a () = action := a in
      let set_channel channel filename =
      let file =
          try open_in filename with
                | Sys_error s ->
                let _ = print_endline s in
                      exit 1
                in
          channel := file
      in
  let speclist = [
    ("-a", Arg.Unit (set_action Ast), "Print the AST");
    ("-s", Arg.Unit (set_action Sast), "Print the SAST");
    ("-l", Arg.Unit (set_action LLVM_IR), "Print the generated LLVM IR");
    ("-c", Arg.Unit (set_action Compile),
      "Check and print the generated LLVM IR (default)");
  ] in  
  let usage_msg = "usage: ./toplevel.native [-a|-s|-l|-c] [file.moop]" in
  let _ = ref stdin in
  Arg.parse speclist (fun filename -> channel := open_in filename) usage_msg;
  

  let std = ref stdin in 
  let _  = set_channel std "stdlib.moop" in 
  let lexbuf = Lexing.from_channel !channel 
  and std_lexbuf = Lexing.from_channel !std in
  let ast = Parser.program Scanner.token lexbuf in  
  let stdast = Parser.program Scanner.token std_lexbuf in 
  let ast = (stdast @ ast) in 
  match !action with
    Ast -> print_string (Ast.string_of_program ast)
  | _ -> let sast = Semant.check ast in
    match !action with
      Ast     -> ()
    | Sast    -> print_string (Sast.string_of_sprogram sast)
    | LLVM_IR -> print_string (Llvm.string_of_llmodule (Codegen.translate sast))
    | Compile -> let m = Codegen.translate sast in  
  Llvm_analysis.assert_valid_module m;  
  print_string (Llvm.string_of_llmodule m)
