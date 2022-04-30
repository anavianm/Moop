/* Ocamlyacc parser for JPlusPlus */

%{
open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA
%token PLUS MINUS TIMES DIVIDE ASSIGN
%token NOT EQ NEQ LT LEQ GT GEQ AND OR
%token RETURN UNLESS IF ELSE FOR WHILE INT BOOL FLOAT VOID STR
%token CLASS SUPER THIS EXTENDS INVERT DOT NEW
%token <int> LITERAL
%token <bool> BLIT
%token <string> ID FLIT SLIT
%token EOF

%start program
%type <Ast.program> program

%nonassoc NOELSE
%nonassoc ELSE
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE
%right NOT

%%

program:
  decls EOF { List.rev $1 }

decls:
   /* nothing */     { []       }
  | decls cdecl      { $2 :: $1 }

// cdecl:
//   CLASS ID extends LBRACE cbodydecls RBRACE
//     { let (f, c, m) = $5 in { cname = $2;
//     pname = $3;
//     fields = List.rev f;
//     constr = c;
//     methods = List.rev m; } }

//  cbodydecls:
//    /* nothing */      { ([], None, [])           }
//  | cbodydecls ivdecl  { let (f, c, m) = $1 in (($2 :: f), c, m) }
//  | cbodydecls condecl { let (f, c, m) = $1 in (f, $2, m) }
//  | cbodydecls mdecl   { let (f, c, m) = $1 in (f, c, ($2 :: m)) }

cdecl:
  CLASS ID extends LBRACE cbodydecls RBRACE
    { { cname = $2;
    pname = $3;
    fields = List.rev (fst $5);
    methods = List.rev (snd $5) } }

cbodydecls:
   /* nothing */     { ([], [])                 }
 | cbodydecls ivdecl { (($2 :: fst $1), snd $1) }
 | cbodydecls mdecl  { (fst $1, ($2 :: snd $1)) }
  
mdecl:
  invert typ ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
     { { priv = $1;
      typ = $2;
	    fname = $3;
	    formals = List.rev $5;
	    locals = List.rev $8;
	    body = List.rev $9 } }

extends: 
  /* nothing */ { None    }
  | EXTENDS ID  { Some $2 }

formals_opt:
    /* nothing */ { [] }
  | formal_list   { $1 }

formal_list:
    typ ID                   { [($1,$2)] }
  | formal_list COMMA typ ID { ($3,$4) :: $1 }

typ:
    INT   { Int        }
  | BOOL  { Bool       }
  | FLOAT { Float      }
  | VOID  { Void       }
  | STR   { Str        }
  | ID    { ClassT($1) }


vdecl_list:
    /* nothing */    { []       }
  | vdecl_list vdecl { $2 :: $1 }

vdecl:
   typ ID SEMI { ($1, $2) }

ivdecl: 
  invert typ ID SEMI { {
     pub  = $1;
     ityp = $2;
     iname = $3;
   } }

invert:
  /* nothing */ {false}
  | INVERT      {true }

stmt_list:
  stmt             { $1 :: [] }
  | stmt_list stmt   { $2 :: $1 }


stmt:
    expr SEMI                                       { Expr $1                                 }
  | RETURN expr_opt SEMI                            { Return $2                               }
  | empty_statement                                 { Nostmt                                  }
  | LBRACE stmt_list RBRACE                         { Block(List.rev $2)                      }
  | IF LPAREN expr RPAREN stmt %prec NOELSE         { If($3, $5, Block([]))                   }
  | IF LPAREN expr RPAREN stmt ELSE stmt            { If($3, $5, $7)                          }
  | UNLESS LPAREN expr RPAREN stmt %prec NOELSE     { Unless(Unop(Not, $3), $5, Block([]))    }
  | UNLESS LPAREN expr RPAREN stmt ELSE stmt        { Unless(Unop(Not, $3), $5, $7)           }
  | FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt
                                                    { For($3, $5, $7, $9)                     }
  | WHILE LPAREN expr RPAREN stmt                   { While($3, $5)                           }


empty_statement: SEMI { Nostmt }


expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1     }

expr:
    LITERAL                               { Literal($1)            }
  | FLIT	                                { Fliteral($1)           }
  | BLIT                                  { BoolLit($1)            }
  | SLIT                                  { StringLit($1)          }
  | ID                                    { Id($1)                 }
  | expr PLUS   expr                      { Binop($1, Add,   $3)   }
  | expr MINUS  expr                      { Binop($1, Sub,   $3)   }
  | expr TIMES  expr                      { Binop($1, Mult,  $3)   }
  | expr DIVIDE expr                      { Binop($1, Div,   $3)   }
  | expr EQ     expr                      { Binop($1, Equal, $3)   }
  | expr NEQ    expr                      { Binop($1, Neq,   $3)   }
  | expr LT     expr                      { Binop($1, Less,  $3)   }
  | expr LEQ    expr                      { Binop($1, Leq,   $3)   }
  | expr GT     expr                      { Binop($1, Greater, $3) }
  | expr GEQ    expr                      { Binop($1, Geq,   $3)   }
  | expr AND    expr                      { Binop($1, And,   $3)   }
  | expr OR     expr                      { Binop($1, Or,    $3)   }
  | MINUS expr %prec NOT                  { Unop(Neg, $2)          }
  | NOT expr                              { Unop(Not, $2)          }
  | ID ASSIGN expr                        { Assign($1, $3)         }
  | ID LPAREN args_opt RPAREN             { Call($1, $3)           }
  | ID DOT ID LPAREN args_opt RPAREN      { Mcall($1, $3, $5)      }
  | ID DOT ID                             { Field($1, $3)          }
  | NEW ID LPAREN args_opt RPAREN         { Concall ($2, $4)       }
  | SUPER LPAREN args_opt RPAREN          { Supcall($3)            }
  | THIS DOT ID                           { ThisId($3)             }
  | THIS DOT ID ASSIGN expr               { ThisAssign($3, $5)     }
  | THIS DOT ID LPAREN args_opt RPAREN    { ThisMcall($3, $5)      }
  | LPAREN expr RPAREN                    { $2                     }

args_opt:
    /* nothing */ { []          }
  | args_list     { List.rev $1 }

args_list:
    expr                 { [$1]     }
  | args_list COMMA expr { $3 :: $1 }

