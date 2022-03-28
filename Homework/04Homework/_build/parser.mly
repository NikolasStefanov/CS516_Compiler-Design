%{
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }

%}

/* Declare your tokens here. */
%token EOF
%token <int64>  INT
%token NULL
%token <string> STRING
%token <string> IDENT

%token TINT     /* int */
%token TVOID    /* void */
%token TSTRING  /* string */
%token IF       /* if */
%token ELSE     /* else */
%token WHILE    /* while */
%token RETURN   /* return */
%token VAR      /* var */
%token SEMI     /* ; */
%token COMMA    /* , */
%token LBRACE   /* { */
%token RBRACE   /* } */
%token PLUS     /* + */
%token DASH     /* - */
%token STAR     /* * */
%token EQEQ     /* == */
%token EQ       /* = */
%token LPAREN   /* ( */
%token RPAREN   /* ) */
%token LBRACKET /* [ */
%token RBRACKET /* ] */
%token TILDE    /* ~ */
%token BANG     /* ! */
%token GLOBAL   /* global */

/* Added */
%token TBOOL    /* bool */
%token TRUE     /* true */
%token FALSE    /* false */
%token NEW      /* new */
%token FOR      /* for */
%token LTHAN    /* < */  
%token GTHAN    /* > */
%token LSHIFT   /* << */  
%token RSHIFT   /* >> */
%token AMP      /* & */
%token PIPE     /* | */
%token LEQ      /* <= */
%token REQ      /* >= */
%token RRSHIFT  /* >>> */
%token BRACKETAMP /* [&] */
%token BRACKETPIPE /* [|] */
%token BANGEQ /* != */

/* Precedence */
%left BRACKETPIPE             //20
%left BRACKETAMP              //30
%left PIPE                    //40
%left AMP                     //50
%left BANGEQ EQEQ             //60
%left REQ GTHAN LEQ LTHAN     //70
%left RRSHIFT RSHIFT LSHIFT   //80
%left PLUS DASH               //90
%left STAR                    //100
%nonassoc BANG
%nonassoc TILDE
%nonassoc LBRACKET
%nonassoc LPAREN

/* ---------------------------------------------------------------------- */

%start prog
%start exp_top
%start stmt_top
%type <Ast.exp Ast.node> exp_top
%type <Ast.stmt Ast.node> stmt_top

%type <Ast.prog> prog
%type <Ast.exp Ast.node> exp
%type <Ast.stmt Ast.node> stmt
%type <Ast.block> block
%type <Ast.ty> ty
%%

prog:
  | p=list(decl) EOF  { p }

decl:
  | GLOBAL name=IDENT EQ init=gexp SEMI
    { Gvdecl (loc $startpos $endpos { name; init }) }
  | frtyp=ret_ty fname=IDENT LPAREN args=arglist RPAREN body=block
    { Gfdecl (loc $startpos $endpos { frtyp; fname; args; body }) }

arglist:
  | l=separated_list(COMMA, pair(ty,IDENT)) { l }

block:
  | LBRACE stmts=list(stmt) RBRACE { stmts }

exp_top:
  | e=exp EOF { e }

stmt_top:
  | s=stmt EOF { s }
    
ty:
  | TINT   { TInt }
  | TBOOL { TBool }
  | r=rtyp { TRef r } 

%inline ret_ty:
  | TVOID  { RetVoid }
  | t=ty   { RetVal t }

%inline rtyp:
  | TSTRING { RString }
  | t=ty LBRACKET RBRACKET { RArray t }

%inline bop:
  | PLUS   { Add }
  | DASH   { Sub }
  | STAR   { Mul }
  | EQEQ   { Eq } 
  | LTHAN  { Lt } 
  | GTHAN  { Gt } 
  | LSHIFT { Shl }
  | RSHIFT { Shr }
  | AMP { And }
  | PIPE { Or }
  | REQ { Gte }
  | LEQ { Lte }
  | RRSHIFT { Sar }
  | BRACKETAMP { IAnd }
  | BRACKETPIPE { IOr }
  | BANGEQ { Neq }

%inline uop:
  | DASH  { Neg }
  | BANG  { Lognot }
  | TILDE { Bitnot }

gexp:
  | i=INT      { loc $startpos $endpos @@ CInt i } 
  | i=STRING   { loc $startpos $endpos @@ CStr i }
  | t=rtyp NULL  { loc $startpos $endpos @@ CNull t }
  | i=TRUE     { loc $startpos $endpos @@ CBool true }
  | i=FALSE    { loc $startpos $endpos @@ CBool false }
  | NEW i=ty LBRACKET RBRACKET LBRACE es=separated_list(COMMA, exp) RBRACE 
               { loc $startpos $endpos @@ CArr (i, es) }

lhs:  
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | e=exp LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }

exp:
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | i=INT               { loc $startpos $endpos @@ CInt i }
  | i=STRING            { loc $startpos $endpos @@ CStr i }
  | t=rtyp NULL         { loc $startpos $endpos @@ CNull t }
  | i=TRUE              { loc $startpos $endpos @@ CBool true }
  | i=FALSE             { loc $startpos $endpos @@ CBool false }
  | e=exp LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }
  //Id list
  | NEW i=ty LBRACKET RBRACKET LBRACE es=separated_list(COMMA, exp) RBRACE 
                        { loc $startpos $endpos @@ CArr (i, es) }
  | NEW i=ty LBRACKET j=exp RBRACKET 
                        { loc $startpos $endpos @@ NewArr (i,j) }
  | e1=exp b=bop e2=exp { loc $startpos $endpos @@ Bop (b, e1, e2) }
  | u=uop e=exp         { loc $startpos $endpos @@ Uop (u, e) }
  | LPAREN e=exp RPAREN { e } 
  //Function Call
  | e=exp LPAREN es=separated_list(COMMA, exp) RPAREN
                        { loc $startpos $endpos @@ Call (e,es) }

vdecl:
  | VAR id=IDENT EQ init=exp { (id, init) }


stmt: 
  | p=lhs EQ e=exp SEMI { loc $startpos $endpos @@ Assn(p,e) }
  | d=vdecl SEMI        { loc $startpos $endpos @@ Decl(d) }
  | RETURN e=exp SEMI   { loc $startpos $endpos @@ Ret(Some e) }
  | RETURN SEMI         { loc $startpos $endpos @@ Ret(None) }
  //Id Case
  | ifs=if_stmt         { ifs }
  | FOR LPAREN i=separated_list(COMMA, vdecl) SEMI SEMI RPAREN l=block
                        { loc $startpos $endpos @@ For(i,None,None,l) }
  | FOR LPAREN i=separated_list(COMMA, vdecl) SEMI SEMI k = stmt SEMI RPAREN l=block
                        { loc $startpos $endpos @@ For(i,None,Some(k),l) }
  | FOR LPAREN i=separated_list(COMMA, vdecl) SEMI j = exp SEMI RPAREN l=block
                        { loc $startpos $endpos @@ For(i,Some(j),None,l) }
  | FOR LPAREN i=separated_list(COMMA, vdecl) SEMI j = exp SEMI k = stmt RPAREN l=block
                        { loc $startpos $endpos @@ For(i,Some(j),Some(k),l) }
  | WHILE LPAREN e=exp RPAREN b=block  
                        { loc $startpos $endpos @@ While(e, b) } 
  | e=exp LPAREN es=separated_list(COMMA, exp) RPAREN SEMI
                        { loc $startpos $endpos @@ SCall (e, es) }

if_stmt:
  | IF LPAREN e=exp RPAREN b1=block b2=else_stmt
    { loc $startpos $endpos @@ If(e,b1,b2) }

else_stmt:
  | (* empty *)       { [] }
  | ELSE b=block      { b }
  | ELSE ifs=if_stmt  { [ ifs ] }
