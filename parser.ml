type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | AND
  | OR
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | BOOL
  | FLOAT
  | VOID
  | STR
  | CLASS
  | SUPER
  | THIS
  | EXTENDS
  | INVERT
  | DOT
  | NEW
  | LITERAL of (int)
  | BLIT of (bool)
  | ID of (string)
  | FLIT of (string)
  | SLIT of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 51 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* COMMA *);
  263 (* PLUS *);
  264 (* MINUS *);
  265 (* TIMES *);
  266 (* DIVIDE *);
  267 (* ASSIGN *);
  268 (* NOT *);
  269 (* EQ *);
  270 (* NEQ *);
  271 (* LT *);
  272 (* LEQ *);
  273 (* GT *);
  274 (* GEQ *);
  275 (* AND *);
  276 (* OR *);
  277 (* RETURN *);
  278 (* IF *);
  279 (* ELSE *);
  280 (* FOR *);
  281 (* WHILE *);
  282 (* INT *);
  283 (* BOOL *);
  284 (* FLOAT *);
  285 (* VOID *);
  286 (* STR *);
  287 (* CLASS *);
  288 (* SUPER *);
  289 (* THIS *);
  290 (* EXTENDS *);
  291 (* INVERT *);
  292 (* DOT *);
  293 (* NEW *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  294 (* LITERAL *);
  295 (* BLIT *);
  296 (* ID *);
  297 (* FLIT *);
  298 (* SLIT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\005\000\005\000\005\000\007\000\
\004\000\004\000\010\000\010\000\013\000\013\000\009\000\009\000\
\009\000\009\000\009\000\009\000\011\000\011\000\014\000\006\000\
\008\000\008\000\012\000\012\000\016\000\016\000\016\000\016\000\
\016\000\016\000\016\000\016\000\015\000\018\000\018\000\017\000\
\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
\017\000\017\000\017\000\017\000\017\000\017\000\017\000\017\000\
\017\000\017\000\017\000\019\000\019\000\020\000\020\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\006\000\000\000\002\000\002\000\010\000\
\000\000\002\000\000\000\001\000\002\000\004\000\001\000\001\000\
\001\000\001\000\001\000\001\000\000\000\002\000\003\000\004\000\
\000\000\001\000\001\000\002\000\002\000\003\000\001\000\003\000\
\005\000\007\000\009\000\005\000\001\000\000\000\001\000\001\000\
\001\000\001\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000\002\000\003\000\004\000\006\000\005\000\004\000\003\000\
\005\000\006\000\003\000\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\072\000\000\000\000\000\001\000\003\000\000\000\
\000\000\000\000\010\000\005\000\000\000\004\000\026\000\006\000\
\007\000\000\000\015\000\016\000\017\000\018\000\019\000\020\000\
\000\000\000\000\024\000\000\000\000\000\000\000\000\000\013\000\
\000\000\000\000\021\000\000\000\000\000\014\000\037\000\000\000\
\000\000\022\000\027\000\000\000\000\000\000\000\008\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\040\000\042\000\000\000\041\000\043\000\031\000\028\000\000\000\
\023\000\000\000\000\000\057\000\058\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\029\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\067\000\032\000\030\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\047\000\048\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\063\000\000\000\000\000\000\000\000\000\060\000\
\000\000\000\000\000\000\036\000\000\000\000\000\000\000\062\000\
\000\000\000\000\000\000\066\000\061\000\034\000\000\000\000\000\
\035\000"

let yydgoto = "\002\000\
\003\000\004\000\007\000\010\000\013\000\016\000\017\000\018\000\
\025\000\030\000\037\000\041\000\031\000\042\000\062\000\063\000\
\064\000\071\000\101\000\102\000"

let yysindex = "\010\000\
\000\000\000\000\000\000\001\000\232\254\000\000\000\000\248\254\
\021\255\052\255\000\000\000\000\015\255\000\000\000\000\000\000\
\000\000\037\255\000\000\000\000\000\000\000\000\000\000\000\000\
\038\255\119\255\000\000\037\255\046\255\090\255\091\255\000\000\
\096\255\037\255\000\000\077\255\084\255\000\000\000\000\099\255\
\050\255\000\000\000\000\141\255\189\255\142\255\000\000\189\255\
\189\255\189\255\144\255\145\255\152\255\153\255\109\255\116\255\
\000\000\000\000\013\255\000\000\000\000\000\000\000\000\020\000\
\000\000\198\000\094\255\000\000\000\000\248\000\158\255\189\255\
\189\255\189\255\189\255\130\255\160\255\189\255\189\255\131\255\
\000\000\189\255\189\255\189\255\189\255\189\255\189\255\189\255\
\189\255\189\255\189\255\189\255\189\255\000\000\000\000\000\000\
\216\000\171\255\234\000\248\000\180\255\175\255\012\255\189\255\
\181\255\248\000\183\255\120\255\120\255\000\000\000\000\031\001\
\031\001\157\255\157\255\157\255\157\255\019\001\006\001\178\255\
\189\255\178\255\000\000\189\255\189\255\189\255\186\255\000\000\
\189\255\164\255\040\000\000\000\248\000\190\255\248\000\000\000\
\191\255\178\255\189\255\000\000\000\000\000\000\192\255\178\255\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\188\255\
\000\000\000\000\000\000\000\000\123\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\193\255\000\000\000\000\195\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\187\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\231\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\106\255\000\000\000\000\
\187\255\000\000\201\255\000\000\000\000\201\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\067\255\000\000\202\255\251\255\201\255\
\000\000\007\255\000\000\060\000\080\000\000\000\000\000\180\000\
\184\000\100\000\120\000\140\000\160\000\016\255\102\255\000\000\
\000\000\000\000\000\000\000\000\201\255\000\000\000\000\000\000\
\201\255\136\255\000\000\000\000\098\255\000\000\122\255\000\000\
\000\000\000\000\203\255\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\240\255\000\000\000\000\161\000\000\000\000\000\023\000\143\255\
\211\255\185\255\184\255\000\000"

let yytablesize = 561
let yytable = "\066\000\
\006\000\098\000\068\000\069\000\070\000\105\000\130\000\059\000\
\132\000\059\000\001\000\029\000\059\000\125\000\078\000\008\000\
\055\000\036\000\055\000\014\000\040\000\055\000\126\000\079\000\
\142\000\009\000\097\000\070\000\099\000\100\000\145\000\127\000\
\100\000\106\000\055\000\055\000\108\000\109\000\110\000\111\000\
\112\000\113\000\114\000\115\000\116\000\117\000\118\000\119\000\
\080\000\015\000\039\000\045\000\134\000\046\000\047\000\012\000\
\137\000\048\000\100\000\043\000\011\000\049\000\019\000\020\000\
\021\000\022\000\023\000\143\000\043\000\070\000\050\000\051\000\
\070\000\052\000\053\000\131\000\024\000\026\000\133\000\100\000\
\135\000\054\000\055\000\100\000\039\000\032\000\056\000\057\000\
\058\000\059\000\060\000\061\000\033\000\070\000\039\000\045\000\
\034\000\046\000\095\000\035\000\071\000\048\000\056\000\071\000\
\056\000\049\000\039\000\056\000\039\000\019\000\020\000\021\000\
\022\000\023\000\050\000\051\000\038\000\052\000\053\000\027\000\
\028\000\056\000\065\000\024\000\065\000\054\000\055\000\065\000\
\084\000\085\000\056\000\057\000\058\000\059\000\060\000\061\000\
\033\000\033\000\044\000\033\000\033\000\065\000\039\000\033\000\
\076\000\072\000\073\000\033\000\025\000\025\000\025\000\025\000\
\025\000\074\000\075\000\077\000\033\000\033\000\096\000\033\000\
\033\000\104\000\025\000\082\000\083\000\084\000\085\000\033\000\
\033\000\103\000\107\000\121\000\033\000\033\000\033\000\033\000\
\033\000\033\000\039\000\045\000\124\000\046\000\123\000\128\000\
\129\000\048\000\138\000\038\000\136\000\049\000\045\000\009\000\
\140\000\141\000\144\000\011\000\048\000\012\000\050\000\051\000\
\049\000\052\000\053\000\068\000\069\000\038\000\067\000\000\000\
\000\000\054\000\055\000\000\000\000\000\000\000\056\000\057\000\
\058\000\059\000\060\000\061\000\054\000\055\000\000\000\000\000\
\000\000\056\000\057\000\058\000\059\000\060\000\061\000\044\000\
\000\000\044\000\000\000\000\000\044\000\044\000\044\000\044\000\
\044\000\000\000\000\000\044\000\044\000\044\000\044\000\044\000\
\044\000\044\000\044\000\064\000\000\000\064\000\000\000\000\000\
\064\000\064\000\064\000\064\000\064\000\000\000\000\000\064\000\
\064\000\064\000\064\000\064\000\064\000\064\000\064\000\000\000\
\000\000\000\000\000\000\000\000\081\000\000\000\000\000\000\000\
\000\000\000\000\082\000\083\000\084\000\085\000\000\000\005\000\
\086\000\087\000\088\000\089\000\090\000\091\000\092\000\093\000\
\139\000\000\000\000\000\000\000\000\000\000\000\082\000\083\000\
\084\000\085\000\000\000\000\000\086\000\087\000\088\000\089\000\
\090\000\091\000\092\000\093\000\045\000\000\000\045\000\000\000\
\000\000\045\000\045\000\045\000\000\000\000\000\000\000\000\000\
\045\000\045\000\045\000\045\000\045\000\045\000\045\000\045\000\
\046\000\000\000\046\000\000\000\000\000\046\000\046\000\046\000\
\000\000\000\000\000\000\000\000\046\000\046\000\046\000\046\000\
\046\000\046\000\046\000\046\000\051\000\000\000\051\000\000\000\
\000\000\051\000\000\000\000\000\000\000\000\000\000\000\000\000\
\051\000\051\000\051\000\051\000\051\000\051\000\051\000\051\000\
\052\000\000\000\052\000\000\000\000\000\052\000\000\000\000\000\
\000\000\000\000\000\000\000\000\052\000\052\000\052\000\052\000\
\052\000\052\000\052\000\052\000\053\000\000\000\053\000\000\000\
\000\000\053\000\000\000\000\000\000\000\000\000\000\000\000\000\
\053\000\053\000\053\000\053\000\053\000\053\000\053\000\053\000\
\054\000\000\000\054\000\000\000\000\000\054\000\000\000\000\000\
\000\000\000\000\000\000\000\000\054\000\054\000\054\000\054\000\
\054\000\054\000\054\000\054\000\049\000\000\000\049\000\000\000\
\050\000\049\000\050\000\000\000\000\000\050\000\000\000\000\000\
\049\000\049\000\000\000\000\000\050\000\050\000\049\000\049\000\
\094\000\000\000\050\000\050\000\082\000\083\000\084\000\085\000\
\000\000\000\000\086\000\087\000\088\000\089\000\090\000\091\000\
\092\000\093\000\120\000\000\000\000\000\000\000\082\000\083\000\
\084\000\085\000\000\000\000\000\086\000\087\000\088\000\089\000\
\090\000\091\000\092\000\093\000\122\000\000\000\000\000\000\000\
\082\000\083\000\084\000\085\000\000\000\000\000\086\000\087\000\
\088\000\089\000\090\000\091\000\092\000\093\000\082\000\083\000\
\084\000\085\000\000\000\000\000\086\000\087\000\088\000\089\000\
\090\000\091\000\092\000\093\000\082\000\083\000\084\000\085\000\
\000\000\000\000\086\000\087\000\088\000\089\000\090\000\091\000\
\092\000\082\000\083\000\084\000\085\000\000\000\000\000\086\000\
\087\000\088\000\089\000\090\000\091\000\082\000\083\000\084\000\
\085\000\000\000\000\000\000\000\000\000\088\000\089\000\090\000\
\091\000"

let yycheck = "\045\000\
\000\000\073\000\048\000\049\000\050\000\078\000\120\000\001\001\
\122\000\003\001\001\000\028\000\006\001\002\001\002\001\040\001\
\001\001\034\000\003\001\005\001\037\000\006\001\011\001\011\001\
\138\000\034\001\072\000\073\000\074\000\075\000\144\000\104\000\
\078\000\079\000\019\001\020\001\082\000\083\000\084\000\085\000\
\086\000\087\000\088\000\089\000\090\000\091\000\092\000\093\000\
\036\001\035\001\001\001\002\001\125\000\004\001\005\001\004\001\
\129\000\008\001\104\000\037\000\040\001\012\001\026\001\027\001\
\028\001\029\001\030\001\139\000\046\000\003\001\021\001\022\001\
\006\001\024\001\025\001\121\000\040\001\040\001\124\000\125\000\
\126\000\032\001\033\001\129\000\001\001\040\001\037\001\038\001\
\039\001\040\001\041\001\042\001\003\001\139\000\001\001\002\001\
\006\001\004\001\005\001\004\001\003\001\008\001\001\001\006\001\
\003\001\012\001\001\001\006\001\003\001\026\001\027\001\028\001\
\029\001\030\001\021\001\022\001\040\001\024\001\025\001\001\001\
\002\001\020\001\001\001\040\001\003\001\032\001\033\001\006\001\
\009\001\010\001\037\001\038\001\039\001\040\001\041\001\042\001\
\001\001\002\001\040\001\004\001\005\001\001\001\001\001\008\001\
\036\001\002\001\002\001\012\001\026\001\027\001\028\001\029\001\
\030\001\002\001\002\001\040\001\021\001\022\001\001\001\024\001\
\025\001\002\001\040\001\007\001\008\001\009\001\010\001\032\001\
\033\001\040\001\040\001\001\001\037\001\038\001\039\001\040\001\
\041\001\042\001\001\001\002\001\006\001\004\001\003\001\003\001\
\002\001\008\001\023\001\001\001\003\001\012\001\002\001\004\001\
\003\001\003\001\003\001\003\001\008\001\003\001\021\001\022\001\
\012\001\024\001\025\001\003\001\003\001\003\001\046\000\255\255\
\255\255\032\001\033\001\255\255\255\255\255\255\037\001\038\001\
\039\001\040\001\041\001\042\001\032\001\033\001\255\255\255\255\
\255\255\037\001\038\001\039\001\040\001\041\001\042\001\001\001\
\255\255\003\001\255\255\255\255\006\001\007\001\008\001\009\001\
\010\001\255\255\255\255\013\001\014\001\015\001\016\001\017\001\
\018\001\019\001\020\001\001\001\255\255\003\001\255\255\255\255\
\006\001\007\001\008\001\009\001\010\001\255\255\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\019\001\020\001\255\255\
\255\255\255\255\255\255\255\255\001\001\255\255\255\255\255\255\
\255\255\255\255\007\001\008\001\009\001\010\001\255\255\031\001\
\013\001\014\001\015\001\016\001\017\001\018\001\019\001\020\001\
\001\001\255\255\255\255\255\255\255\255\255\255\007\001\008\001\
\009\001\010\001\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\001\001\255\255\003\001\255\255\
\255\255\006\001\007\001\008\001\255\255\255\255\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\019\001\020\001\
\001\001\255\255\003\001\255\255\255\255\006\001\007\001\008\001\
\255\255\255\255\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\001\001\255\255\003\001\255\255\
\255\255\006\001\255\255\255\255\255\255\255\255\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\019\001\020\001\
\001\001\255\255\003\001\255\255\255\255\006\001\255\255\255\255\
\255\255\255\255\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\001\001\255\255\003\001\255\255\
\255\255\006\001\255\255\255\255\255\255\255\255\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\019\001\020\001\
\001\001\255\255\003\001\255\255\255\255\006\001\255\255\255\255\
\255\255\255\255\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\001\001\255\255\003\001\255\255\
\001\001\006\001\003\001\255\255\255\255\006\001\255\255\255\255\
\013\001\014\001\255\255\255\255\013\001\014\001\019\001\020\001\
\003\001\255\255\019\001\020\001\007\001\008\001\009\001\010\001\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\020\001\003\001\255\255\255\255\255\255\007\001\008\001\
\009\001\010\001\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\003\001\255\255\255\255\255\255\
\007\001\008\001\009\001\010\001\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\019\001\020\001\007\001\008\001\
\009\001\010\001\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\007\001\008\001\009\001\010\001\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\007\001\008\001\009\001\010\001\255\255\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\007\001\008\001\009\001\
\010\001\255\255\255\255\255\255\255\255\015\001\016\001\017\001\
\018\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  AND\000\
  OR\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  BOOL\000\
  FLOAT\000\
  VOID\000\
  STR\000\
  CLASS\000\
  SUPER\000\
  THIS\000\
  EXTENDS\000\
  INVERT\000\
  DOT\000\
  NEW\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  BLIT\000\
  ID\000\
  FLIT\000\
  SLIT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 34 "parser.mly"
            ( List.rev _1 )
# 399 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                     ( []       )
# 405 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'cdecl) in
    Obj.repr(
# 38 "parser.mly"
                     ( _2 :: _1 )
# 413 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'extends) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'cbodydecls) in
    Obj.repr(
# 42 "parser.mly"
    ( { cname = _2;
    pname = _3;
    fields = List.rev (fst _5);
    methods = List.rev (snd _5) } )
# 425 "parser.ml"
               : 'cdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parser.mly"
                     ( ([], [])                 )
# 431 "parser.ml"
               : 'cbodydecls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'cbodydecls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ivdecl) in
    Obj.repr(
# 49 "parser.mly"
                     ( ((_2 :: fst _1), snd _1) )
# 439 "parser.ml"
               : 'cbodydecls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'cbodydecls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'mdecl) in
    Obj.repr(
# 50 "parser.mly"
                     ( (fst _1, (_2 :: snd _1)) )
# 447 "parser.ml"
               : 'cbodydecls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 9 : 'invert) in
    let _2 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _3 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _8 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _9 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 54 "parser.mly"
     ( { priv = _1;
      typ = ClassT (_2);
	    fname = _3;
	    formals = List.rev _5;
	    locals = List.rev _8;
	    body = List.rev _9 } )
# 464 "parser.ml"
               : 'mdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
                ( None    )
# 470 "parser.ml"
               : 'extends))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 63 "parser.mly"
                ( Some _2 )
# 477 "parser.ml"
               : 'extends))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
                  ( [] )
# 483 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 67 "parser.mly"
                  ( _1 )
# 490 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 70 "parser.mly"
                             ( [(_1,_2)]     )
# 498 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 71 "parser.mly"
                             ( (_3,_4) :: _1 )
# 507 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parser.mly"
          ( Int        )
# 513 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
          ( Bool       )
# 519 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
          ( Float      )
# 525 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 77 "parser.mly"
          ( Void       )
# 531 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "parser.mly"
          ( Str        )
# 537 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 79 "parser.mly"
          ( ClassT(_1) )
# 544 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parser.mly"
                     ( []       )
# 550 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 84 "parser.mly"
                     ( _2 :: _1 )
# 558 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 87 "parser.mly"
               ( (_1, _2) )
# 566 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'invert) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 91 "parser.mly"
                      ( {
     pub  = _1;
     ityp = _2;
     iname = _3;
   } )
# 579 "parser.ml"
               : 'ivdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 98 "parser.mly"
                (false)
# 585 "parser.ml"
               : 'invert))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "parser.mly"
                (true )
# 591 "parser.ml"
               : 'invert))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'empty_statement) in
    Obj.repr(
# 102 "parser.mly"
                     ( []       )
# 598 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 103 "parser.mly"
                     ( _2 :: _1 )
# 606 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                                            ( Expr _1               )
# 613 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_opt) in
    Obj.repr(
# 110 "parser.mly"
                                            ( Return _2             )
# 620 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'empty_statement) in
    Obj.repr(
# 111 "parser.mly"
                                            ( Nostmt          )
# 627 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 112 "parser.mly"
                                            ( Block(List.rev _2)    )
# 634 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 113 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 642 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 114 "parser.mly"
                                            ( If(_3, _5, _7)        )
# 651 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 116 "parser.mly"
                                            ( For(_3, _5, _7, _9)   )
# 661 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 117 "parser.mly"
                                            ( While(_3, _5)         )
# 669 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 120 "parser.mly"
             (Nostmt)
# 675 "parser.ml"
               : 'empty_statement))
; (fun __caml_parser_env ->
    Obj.repr(
# 123 "parser.mly"
                  ( Noexpr )
# 681 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 124 "parser.mly"
                  ( _1     )
# 688 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 127 "parser.mly"
                                          ( Literal(_1)            )
# 695 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 128 "parser.mly"
                                         ( Fliteral(_1)           )
# 702 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 129 "parser.mly"
                                          ( BoolLit(_1)            )
# 709 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 130 "parser.mly"
                                          ( StringLit(_1)          )
# 716 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 131 "parser.mly"
                                          ( Id(_1)                 )
# 723 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 132 "parser.mly"
                                          ( Binop(_1, Add,   _3)   )
# 731 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 133 "parser.mly"
                                          ( Binop(_1, Sub,   _3)   )
# 739 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 134 "parser.mly"
                                          ( Binop(_1, Mult,  _3)   )
# 747 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 135 "parser.mly"
                                          ( Binop(_1, Div,   _3)   )
# 755 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 136 "parser.mly"
                                          ( Binop(_1, Equal, _3)   )
# 763 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 137 "parser.mly"
                                          ( Binop(_1, Neq,   _3)   )
# 771 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 138 "parser.mly"
                                          ( Binop(_1, Less,  _3)   )
# 779 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 139 "parser.mly"
                                          ( Binop(_1, Leq,   _3)   )
# 787 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 140 "parser.mly"
                                          ( Binop(_1, Greater, _3) )
# 795 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 141 "parser.mly"
                                          ( Binop(_1, Geq,   _3)   )
# 803 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 142 "parser.mly"
                                          ( Binop(_1, And,   _3)   )
# 811 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 143 "parser.mly"
                                          ( Binop(_1, Or,    _3)   )
# 819 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 144 "parser.mly"
                                          ( Unop(Neg, _2)          )
# 826 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 145 "parser.mly"
                                          ( Unop(Not, _2)          )
# 833 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 146 "parser.mly"
                                          ( Assign(_1, _3)         )
# 841 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 147 "parser.mly"
                                          ( Call(_1, _3)           )
# 849 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 148 "parser.mly"
                                          ( Mcall(_1, _3, _5)      )
# 858 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 149 "parser.mly"
                                          ( Concall (_2, _4)       )
# 866 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 150 "parser.mly"
                                          ( Supcall(_3)            )
# 873 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 151 "parser.mly"
                                          (Id(_3)                  )
# 880 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 152 "parser.mly"
                                          (Assign(_3, _5)          )
# 888 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 153 "parser.mly"
                                          ( Call(_3, _5)           )
# 896 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 154 "parser.mly"
                                          ( _2                     )
# 903 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 157 "parser.mly"
                  ( []          )
# 909 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'args_list) in
    Obj.repr(
# 158 "parser.mly"
                  ( List.rev _1 )
# 916 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 161 "parser.mly"
                         ( [_1]     )
# 923 "parser.ml"
               : 'args_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'args_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 162 "parser.mly"
                         ( _3 :: _1 )
# 931 "parser.ml"
               : 'args_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
