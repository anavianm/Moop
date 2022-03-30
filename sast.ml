(* Semantically-checked Abstract Syntax Tree and functions for printing it *)

open Ast

type sexpr = typ * sx
and sx =
    SLiteral of int
  | SFliteral of string
  | SBoolLit of bool
  | SStringLit of string
  | SId of string
  | SBinop of sexpr * op * sexpr
  | SUnop of uop * sexpr
  | SAssign of string * sexpr
  | SCall of string * sexpr list
  | SMcall of string * string * sexpr list
  | SConcall of string * sexpr list
  | SSupcall of sexpr list
  | SNoexpr

type sstmt =
    SBlock of sstmt list
  | SExpr of sexpr
  | SReturn of sexpr
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt

type sivdecl = {
    spub   : bool;
    sityp  : typ;
    siname : string;
}

type smdecl = {
    spriv    : bool;
    styp     : typ;
    sfname   : string;
    sformals : bind list;
    slocals  : bind list;
    sbody    : sstmt list;
}

type scdecl =  { 
    scname   : string; 
    spname   : string option; 
    sfields  : sivdecl list;
    smethods : smdecl list;
}


type sprogram = scdecl list

(* Pretty-printing functions *)

let rec string_of_sexpr (t, e) =
  "(" ^ string_of_typ t ^ " : " ^ (match e with
    SLiteral(l) -> string_of_int l
  | SBoolLit(true) -> "true"
  | SBoolLit(false) -> "false"
  | SFliteral(l) -> l
  | SStringLit(l) -> l
  | SId(s) -> s
  | SBinop(e1, o, e2) ->
      string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2
  | SUnop(o, e) -> string_of_uop o ^ string_of_sexpr e
  | SAssign(v, e) -> v ^ " = " ^ string_of_sexpr e
  | SCall(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SMcall(s1, s2, el) -> 
      s1 ^ "." ^ s2 ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SConcall(s, el) -> 
      s ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SSupcall (el) -> 
      "super (" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SNoexpr -> ""
				  ) ^ ")"				     

let rec string_of_sstmt = function
    SBlock(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_sstmt stmts) ^ "}\n"
  | SExpr(expr) -> string_of_sexpr expr ^ ";\n";
  | SReturn(expr) -> "return " ^ string_of_sexpr expr ^ ";\n";
  | SIf(e, s, SBlock([])) ->
      "if (" ^ string_of_sexpr e ^ ")\n" ^ string_of_sstmt s
  | SIf(e, s1, s2) ->  "if (" ^ string_of_sexpr e ^ ")\n" ^
      string_of_sstmt s1 ^ "else\n" ^ string_of_sstmt s2
  | SFor(e1, e2, e3, s) ->
      "for (" ^ string_of_sexpr e1  ^ " ; " ^ string_of_sexpr e2 ^ " ; " ^
      string_of_sexpr e3  ^ ") " ^ string_of_sstmt s
  | SWhile(e, s) -> "while (" ^ string_of_sexpr e ^ ") " ^ string_of_sstmt s

let string_of_smdecl mdecl =
  let tilda = match mdecl.spriv with 
    | true  -> "~ "
    | false -> ""
  in 
  tilda ^ string_of_typ mdecl.styp ^ " " ^
  mdecl.sfname ^ "(" ^ String.concat ", " (List.map snd mdecl.sformals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl mdecl.slocals) ^
  String.concat "" (List.map string_of_sstmt mdecl.sbody) ^
  "}\n"

let string_of_sivdecl ivdecl = 
  let tilda = match ivdecl.spub with 
    | true  -> "~ "
    | false -> ""
  in 
  tilda ^ string_of_typ ivdecl.sityp ^ " "^ ivdecl.siname  ^ ";\n"

let string_of_scdecl cdecl =
  let extext = match cdecl.spname with
    | None   -> ""
    | Some s -> " <- " ^ s
  in
  "class " ^ cdecl.scname ^ extext ^ " {\n" ^
  String.concat "" (List.map string_of_sivdecl cdecl.sfields) ^
  String.concat "\n " (List.map string_of_smdecl cdecl.smethods) ^
  "}\n"

let string_of_sprogram program =
  String.concat "" (List.map string_of_scdecl program) ^ "\n"

