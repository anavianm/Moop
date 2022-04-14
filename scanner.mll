(* Ocamllex scanner for JPlusPlus *)

{ open Parser }

let digit = ['0' - '9']
let special_chars = [',' '!' '?' '$' '@' '\'' ':' '#']
let digits = digit+


rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| "/*"     { mcomment lexbuf }           (* Multi Line Comments *)
| "//"     { scomment lexbuf }           (* Single Line Comment *)
| "(╯°□°）╯︵ ┻━┻" {fcomment lexbuf }
| '('      { LPAREN  }
| ')'      { RPAREN  }
| '{'      { LBRACE  }
| '}'      { RBRACE  }
| ';'      { SEMI    }
| '.'      { DOT     }
| ','      { COMMA   }
| '+'      { PLUS    }
| '-'      { MINUS   }
| '*'      { TIMES   }
| '/'      { DIVIDE  }
| "<-"     { EXTENDS }
| '~'      { INVERT  }
| '='      { ASSIGN  }
| "=="     { EQ      }
| "!="     { NEQ     }
| '<'      { LT      }
| "<="     { LEQ     }
| ">"      { GT      }
| ">="     { GEQ     }
| "&&"     { AND     }
| "||"     { OR      }
| "!"      { NOT     }
| "if"     { IF      }
| "else"   { ELSE    }
| "for"    { FOR     }
| "while"  { WHILE   }
| "return" { RETURN  }
| "int"    { INT     }
| "bool"   { BOOL    }
| "float"  { FLOAT   }
| "string" { STR     }
| "void"   { VOID    }
| "true"   { BLIT(true)  }
| "false"  { BLIT(false) }
| "class"  { CLASS   }
| "new"    { NEW     }
| "this"   { THIS    }
| "super"  { SUPER   }
| digits as lxm { LITERAL(int_of_string lxm) }
| digits '.'  digit* as lxm { FLIT(lxm) }
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
| ['\"'] ((['a'-'z' 'A'-'Z' '0'-'9' '_' ' '] | special_chars)* as lxm) ['\"']{ SLIT(lxm) }
| eof { EOF }
| _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and mcomment = parse
  "*/" { token lexbuf }
| _    { mcomment lexbuf }

and scomment = parse 
  "\n" { token lexbuf }
| _    { scomment lexbuf }

and fcomment = parse 
"┬─┬ ノ( ゜-゜ノ)" { token lexbuf }
| _               { fcomment lexbuf } 
