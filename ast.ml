(* Abstract Syntax Tree and functions for printing it *)

type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or

type uop = Neg | Not | Invert

type cop = Class | This | Super 

type typ = Int | Bool | Float | Void | Str | ClassT of string 

type bind = typ * string

type ivdecl = {
  pub   : bool;
  ityp  : typ;
  iname : string;
}

(* type odecl = { 
  pub   : bool;
  cname : string;
  oname : string;
} *)

(* TODO 
    Class Methods (DOT) 
    Constructor Calls *)
type expr =
    Literal of int
  | Fliteral of string
  | BoolLit of bool
  | StringLit of string
  | Id of string
  | Binop of expr * op * expr
  | Unop of uop * expr
  | Assign of string * expr
  | Call of string * expr list
  | Field of string * string
  | Mcall of string * string * expr list
  | Concall of string * expr list
  | Supcall of expr list
  | Noexpr

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt
  | Nostmt

type mdecl = {
    priv    : bool;
    typ     : typ;
    fname   : string;
    formals : bind list;
    locals  : bind list;
    body    : stmt list;
}

type cdecl =  { 
    cname   : string; 
    pname   : string option; 
    fields  : ivdecl list;
    methods : mdecl list;
}


type program = cdecl list

(* Pretty-printing functions *)

let string_of_op = function
    Add     -> "+"
  | Sub     -> "-"
  | Mult    -> "*"
  | Div     -> "/"
  | Equal   -> "=="
  | Neq     -> "!="
  | Less    -> "<"
  | Leq     -> "<="
  | Greater -> ">"
  | Geq     -> ">="
  | And     -> "&&"
  | Or      -> "||"

let string_of_uop = function
    Neg     -> "-"
  | Not     -> "!"
  | Invert  -> "~"

let string_of_cop = function 
    This    -> "this"
  | Super   -> "super"
  | Class   -> "class"

let rec string_of_expr = function
    Literal(l) -> string_of_int l
  | Fliteral(l) -> l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | StringLit(l) -> l 
  | Id(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Mcall(o, f, el) -> 
      o ^ "." ^ f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Field (f1, f2) -> 
      f1 ^ "." ^ f2 
  | Concall(c, el) ->
      c ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Supcall(el)    -> 
      "super (" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Noexpr -> ""

let rec string_of_stmt = function
    Block(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n";
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n";
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ")\n" ^
      string_of_stmt s1 ^ "else\n" ^ string_of_stmt s2
  | For(e1, e2, e3, s) ->
      "for (" ^ string_of_expr e1  ^ " ; " ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s
  | Nostmt -> ""

let string_of_typ = function
    Int    -> "int"
  | Bool   -> "bool"
  | Float  -> "float"
  | Void   -> "void"
  | Str    -> "string"
  | ClassT(c) -> c

let string_of_vdecl (t, id) = string_of_typ t ^ " " ^ id ^ ";\n"

let string_of_ivdecl ivdecl = 
  let tilda = match ivdecl.pub with 
    | true  -> "~ "
    | false -> ""
  in 
  tilda ^ string_of_typ ivdecl.ityp ^ " "^ ivdecl.iname  ^ ";\n"
  
let string_of_mdecl mdecl =
  let tilda = match mdecl.priv with 
    | true  -> "~ "
    | false -> ""
  in 
  tilda ^ string_of_typ mdecl.typ ^ " " ^
  mdecl.fname ^ "(" ^ String.concat ", " (List.map snd mdecl.formals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl mdecl.locals) ^
  String.concat "" (List.map string_of_stmt mdecl.body) ^
  "}\n"

let string_of_cdecl cdecl =
  let extext = match cdecl.pname with
    | None   -> ""
    | Some s -> " <- " ^ s
  in
  "class " ^ cdecl.cname ^ extext ^ " {\n" ^
  String.concat "" (List.map string_of_ivdecl cdecl.fields) ^
  String.concat "\n " (List.map string_of_mdecl cdecl.methods) ^
  "}\n"

let string_of_program program =
  String.concat "" (List.map string_of_cdecl program) ^ "\n"
