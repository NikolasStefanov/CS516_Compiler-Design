
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR
    | UIDENT of (
# 15 "parser.mly"
       (string)
# 13 "parser.ml"
  )
    | TVOID
    | TSTRING
    | TRUE
    | TINT
    | TILDE
    | TBOOL
    | STRUCT
    | STRING of (
# 13 "parser.mly"
       (string)
# 25 "parser.ml"
  )
    | STAR
    | SEMI
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | QUESTION
    | PLUS
    | NULL
    | NEW
    | LTLT
    | LTEQ
    | LT
    | LPAREN
    | LENGTH
    | LBRACKET
    | LBRACE
    | IOR
    | INT of (
# 11 "parser.mly"
       (int64)
# 48 "parser.ml"
  )
    | IFQ
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 55 "parser.ml"
  )
    | IAND
    | GTGTGT
    | GTGT
    | GTEQ
    | GT
    | GLOBAL
    | FOR
    | FALSE
    | EQEQ
    | EQ
    | EOF
    | ELSE
    | DOT
    | DASH
    | COMMA
    | BAR
    | BANGEQ
    | BANG
    | ARROW
    | AMPER
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState409
  | MenhirState407
  | MenhirState402
  | MenhirState400
  | MenhirState394
  | MenhirState389
  | MenhirState387
  | MenhirState384
  | MenhirState376
  | MenhirState367
  | MenhirState364
  | MenhirState359
  | MenhirState352
  | MenhirState350
  | MenhirState349
  | MenhirState347
  | MenhirState345
  | MenhirState338
  | MenhirState334
  | MenhirState327
  | MenhirState320
  | MenhirState314
  | MenhirState310
  | MenhirState305
  | MenhirState302
  | MenhirState297
  | MenhirState295
  | MenhirState291
  | MenhirState289
  | MenhirState285
  | MenhirState284
  | MenhirState282
  | MenhirState279
  | MenhirState276
  | MenhirState275
  | MenhirState273
  | MenhirState269
  | MenhirState268
  | MenhirState266
  | MenhirState263
  | MenhirState260
  | MenhirState258
  | MenhirState257
  | MenhirState255
  | MenhirState251
  | MenhirState250
  | MenhirState248
  | MenhirState245
  | MenhirState241
  | MenhirState240
  | MenhirState238
  | MenhirState234
  | MenhirState233
  | MenhirState231
  | MenhirState228
  | MenhirState226
  | MenhirState224
  | MenhirState223
  | MenhirState221
  | MenhirState214
  | MenhirState213
  | MenhirState211
  | MenhirState209
  | MenhirState208
  | MenhirState207
  | MenhirState205
  | MenhirState202
  | MenhirState197
  | MenhirState195
  | MenhirState191
  | MenhirState189
  | MenhirState187
  | MenhirState186
  | MenhirState181
  | MenhirState178
  | MenhirState175
  | MenhirState168
  | MenhirState161
  | MenhirState159
  | MenhirState156
  | MenhirState148
  | MenhirState145
  | MenhirState142
  | MenhirState133
  | MenhirState130
  | MenhirState128
  | MenhirState123
  | MenhirState116
  | MenhirState114
  | MenhirState112
  | MenhirState110
  | MenhirState108
  | MenhirState106
  | MenhirState104
  | MenhirState102
  | MenhirState100
  | MenhirState98
  | MenhirState96
  | MenhirState94
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState84
  | MenhirState81
  | MenhirState79
  | MenhirState74
  | MenhirState70
  | MenhirState68
  | MenhirState67
  | MenhirState63
  | MenhirState59
  | MenhirState57
  | MenhirState50
  | MenhirState45
  | MenhirState43
  | MenhirState38
  | MenhirState33
  | MenhirState29
  | MenhirState27
  | MenhirState21
  | MenhirState19
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState9
  | MenhirState0

# 1 "parser.mly"
  
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }


# 228 "parser.ml"

let rec _menhir_goto_if_stmt : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Ast.stmt Ast.node) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState209 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_ifs_ = _endpos in
        let (ifs : (Ast.stmt Ast.node)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _endpos = _endpos_ifs_ in
        let _v : (Ast.block) = 
# 241 "parser.mly"
                      ( [ ifs ] )
# 243 "parser.ml"
         in
        _menhir_goto_else_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState409 | MenhirState187 | MenhirState320 | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_ifs_ = _endpos in
        let (ifs : (Ast.stmt Ast.node)) = _v in
        let _v : (Ast.stmt Ast.node) = 
# 221 "parser.mly"
                        ( ifs )
# 254 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run135 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position)) * _menhir_state * (Ast.ty list)) * Lexing.position)) * _menhir_state * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 272 "parser.ml"
       in
      let l = 
# 232 "<standard.mly>"
    ( xs )
# 277 "parser.ml"
       in
      
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 282 "parser.ml"
      
    in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 291 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce145 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position)) * _menhir_state * (Ast.ty list)) * Lexing.position)) * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 303 "parser.ml"
       in
      let l = 
# 232 "<standard.mly>"
    ( xs )
# 308 "parser.ml"
       in
      
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 313 "parser.ml"
      
    in
    
# 122 "parser.mly"
           ( TRef r )
# 319 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run52 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position)) * _menhir_state * (Ast.ty list)) * Lexing.position)) * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 333 "parser.ml"
       in
      let l = 
# 232 "<standard.mly>"
    ( xs )
# 338 "parser.ml"
       in
      
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 343 "parser.ml"
      
    in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 349 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_else_stmt : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Ast.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState214 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__4_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 234 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 368 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (id_inlined1 : (
# 15 "parser.mly"
       (string)
# 379 "parser.ml"
        )), _startpos_id_inlined1_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 383 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let id = id_inlined1 in
          
# 134 "parser.mly"
              ( RStruct id )
# 391 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 399 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState224 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 410 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r = 
# 132 "parser.mly"
            ( RString )
# 416 "parser.ml"
         in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 423 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState234 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _endpos__2_inlined1_, _), _, _startpos__1_inlined2_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 434 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 441 "parser.ml"
           in
          
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 446 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 454 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState241 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _endpos__2_inlined1_, _), _, (t : (Ast.ty)), _startpos_t_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 465 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let ret = 
# 129 "parser.mly"
           ( RetVal t )
# 472 "parser.ml"
           in
          
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 477 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 485 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let ((((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, _startpos__1_inlined2_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 496 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 503 "parser.ml"
           in
          
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 508 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 516 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let ((((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 527 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let ret =
            let t = t_inlined1 in
            
# 129 "parser.mly"
           ( RetVal t )
# 536 "parser.ml"
            
          in
          
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 542 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 550 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState269 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_inlined1_), _, _startpos__1_inlined2_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 561 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 568 "parser.ml"
           in
          let l = 
# 232 "<standard.mly>"
    ( xs )
# 573 "parser.ml"
           in
          
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 578 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 586 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState276 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let (((((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, _startpos__1_inlined1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_inlined1_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 597 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r =
          let ret =
            let t = t_inlined1 in
            
# 129 "parser.mly"
           ( RetVal t )
# 606 "parser.ml"
            
          in
          let l = 
# 232 "<standard.mly>"
    ( xs )
# 612 "parser.ml"
           in
          
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 617 "parser.ml"
          
        in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 625 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | MenhirState285 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos_b2_ = _endpos in
        let (b2 : (Ast.block)) = _v in
        let ((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 636 "parser.ml"
        )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__7_), _endpos_b1_, _, (b1 : (Ast.block))) = _menhir_stack in
        let _endpos = _endpos_b2_ in
        let _v : (Ast.stmt Ast.node) = let r = 
# 133 "parser.mly"
                           ( RArray t )
# 642 "parser.ml"
         in
        let _endpos = _endpos_b2_ in
        let _startpos = _startpos__1_ in
        
# 236 "parser.mly"
    ( loc _startpos _endpos @@ Cast(r, id, e, b1, b2) )
# 649 "parser.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_, _endpos) = Obj.magic _menhir_stack in
    let _v : (Ast.block) = 
# 239 "parser.mly"
                      ( [] )
# 661 "parser.ml"
     in
    _menhir_goto_else_stmt _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_run209 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IF ->
        _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IFQ ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LBRACE ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState209

and _menhir_reduce33 : _menhir_env -> ((('ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position) * Lexing.position) * _menhir_state * (Ast.exp Ast.node list)) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _startpos__2_), _, (xs : (Ast.exp Ast.node list))), _endpos__4_) = _menhir_stack in
    let _startpos = _startpos_e_ in
    let _endpos = _endpos__4_ in
    let _v : (Ast.exp Ast.node) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 690 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    
# 203 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,es) )
# 697 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_gexp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.exp Ast.node list)) = _v in
        let _v : (Ast.exp Ast.node list) = 
# 144 "<standard.mly>"
    ( x )
# 711 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_gexp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.exp Ast.node list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.exp Ast.node))) = _menhir_stack in
        let _v : (Ast.exp Ast.node list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 722 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMI_gfield_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.id * Ast.exp Ast.node) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState347 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : ((Ast.id * Ast.exp Ast.node) list)) = _v in
        let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 144 "<standard.mly>"
    ( x )
# 738 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_gfield__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState384 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Ast.id * Ast.exp Ast.node) list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.id * Ast.exp Ast.node))), _endpos__2_) = _menhir_stack in
        let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 749 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_gfield_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_ty__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.ty list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState50 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | QUESTION ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
                    | COMMA | IDENT _ | LBRACKET | NULL | RPAREN ->
                        _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState133 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | NULL ->
                        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                    | QUESTION ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
                    | COMMA | LBRACKET | RPAREN ->
                        _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState148 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | NULL ->
                        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                    | QUESTION ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
                    | LBRACKET ->
                        _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState260 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState263 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | IDENT _v ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | EQ ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | BANG ->
                                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | DASH ->
                                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | FALSE ->
                                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | IDENT _v ->
                                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | INT _v ->
                                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | LENGTH ->
                                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | LPAREN ->
                                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | NEW ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | STRING _v ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TBOOL ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TILDE ->
                                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TINT ->
                                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TRUE ->
                                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TSTRING ->
                                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | UIDENT _v ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | QUESTION ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
                    | LBRACKET ->
                        _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState263)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState364 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState367 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | NULL ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _endpos__2_ = _endpos in
                        let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, _startpos__1_inlined1_) = _menhir_stack in
                        let _v : (Ast.exp Ast.node) = let r =
                          let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 1104 "parser.ml"
                           in
                          let l = 
# 232 "<standard.mly>"
    ( xs )
# 1109 "parser.ml"
                           in
                          
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 1114 "parser.ml"
                          
                        in
                        let _startpos_r_ = _startpos__1_ in
                        let _endpos = _endpos__2_ in
                        let _startpos = _startpos_r_ in
                        
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 1123 "parser.ml"
                         in
                        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
                    | QUESTION ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
                    | LBRACKET ->
                        _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState367)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState320 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.stmt Ast.node))), _, (xs : (Ast.block))) = _menhir_stack in
        let _v : (Ast.block) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1168 "parser.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s), _, (stmts : (Ast.block))) = _menhir_stack in
            let _endpos = _endpos__3_ in
            let _v : (Ast.block) = 
# 230 "parser.mly"
                                   ( stmts )
# 1187 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState191 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos__4_), _endpos_b_, _, (b : (Ast.block))) = _menhir_stack in
                let _v : (Ast.stmt Ast.node) = let _endpos = _endpos_b_ in
                let _startpos = _startpos__1_ in
                
# 225 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 1200 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | MenhirState207 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState208
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState208
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
            | MenhirState213 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState214
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState214
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214)
            | MenhirState209 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _endpos_b_, _, (b : (Ast.block))) = _menhir_stack in
                let _endpos = _endpos_b_ in
                let _v : (Ast.block) = 
# 240 "parser.mly"
                      ( b )
# 1237 "parser.ml"
                 in
                _menhir_goto_else_stmt _menhir_env _menhir_stack _endpos _menhir_s _v
            | MenhirState223 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState224
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState224
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224)
            | MenhirState233 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState234
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState234
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState234)
            | MenhirState240 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState241
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState241
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState241)
            | MenhirState250 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState251
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState251
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251)
            | MenhirState257 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState258
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState258
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState258)
            | MenhirState268 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState269
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState269
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269)
            | MenhirState275 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState276
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState276
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState276)
            | MenhirState284 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState285
                | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | IFQ | INT _ | LENGTH | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | UIDENT _ | VAR | WHILE ->
                    _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState285
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState285)
            | MenhirState302 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((((((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _, (xs : (Ast.vdecl list))), _endpos__4_), _, (e : (Ast.exp Ast.node option))), _endpos__6_), _, (s : (Ast.stmt Ast.node option))), _endpos__8_), _endpos_b_, _, (b : (Ast.block))) = _menhir_stack in
                let _v : (Ast.stmt Ast.node) = let ds = 
# 232 "<standard.mly>"
    ( xs )
# 1351 "parser.ml"
                 in
                let _endpos = _endpos_b_ in
                let _startpos = _startpos__1_ in
                
# 227 "parser.mly"
                        ( loc _startpos _endpos @@ For(ds,e,s,b) )
# 1358 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | MenhirState186 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_fname_, (fname : (
# 14 "parser.mly"
       (string)
# 1367 "parser.ml"
                )), _startpos_fname_), _startpos__3_), _, (args : ((Ast.ty * Ast.id) list))), _endpos__5_), _endpos_body_, _, (body : (Ast.block))) = _menhir_stack in
                let _v : (Ast.decl) = let frtyp = 
# 128 "parser.mly"
           ( RetVoid )
# 1372 "parser.ml"
                 in
                let _startpos_frtyp_ = _startpos__1_ in
                let _endpos = _endpos_body_ in
                let _startpos = _startpos_frtyp_ in
                
# 110 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 1380 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
            | MenhirState402 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos_fname_, (fname : (
# 14 "parser.mly"
       (string)
# 1389 "parser.ml"
                )), _startpos_fname_), _startpos__3_), _, (args : ((Ast.ty * Ast.id) list))), _endpos__5_), _endpos_body_, _, (body : (Ast.block))) = _menhir_stack in
                let _v : (Ast.decl) = let frtyp = 
# 129 "parser.mly"
           ( RetVal t )
# 1394 "parser.ml"
                 in
                let _startpos_frtyp_ = _startpos_t_ in
                let _endpos = _endpos_body_ in
                let _startpos = _startpos_frtyp_ in
                
# 110 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 1402 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__7_ = _endpos in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__4_, _), _, (xs : (Ast.exp Ast.node list))) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__7_ in
            let _v : (Ast.exp Ast.node) = let cs = 
# 232 "<standard.mly>"
    ( xs )
# 1454 "parser.ml"
             in
            let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            
# 191 "parser.mly"
    ( loc _startpos _endpos @@ CArr (t, cs) )
# 1461 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState310 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos__5_ = _endpos in
                let ((((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _startpos__2_), _, (xs : (Ast.exp Ast.node list))), _endpos__4_) = _menhir_stack in
                let _v : (Ast.stmt Ast.node) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 1492 "parser.ml"
                 in
                let _endpos = _endpos__5_ in
                let _startpos = _startpos_e_ in
                
# 220 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, es) )
# 1499 "parser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | AMPER | BANGEQ | BAR | DASH | DOT | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LBRACKET | LPAREN | LT | LTEQ | LTLT | PLUS | STAR ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_pair_ty_IDENT___ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.ty * Ast.id) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : ((Ast.ty * Ast.id) list)) = _v in
    let _v : ((Ast.ty * Ast.id) list) = let l = 
# 232 "<standard.mly>"
    ( xs )
# 1527 "parser.ml"
     in
    
# 118 "parser.mly"
                                            ( l )
# 1532 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState178 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState186
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState402
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.decl) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GLOBAL ->
        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRUCT ->
        _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TVOID ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState407 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) MenhirState407
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState407

and _menhir_goto_loption_separated_nonempty_list_SEMI_gfield__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.id * Ast.exp Ast.node) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__5_ = _endpos in
        let (((_menhir_stack, _menhir_s, _startpos__1_), _, (i : (
# 15 "parser.mly"
       (string)
# 1633 "parser.ml"
        )), _startpos_i_), _, (xs : ((Ast.id * Ast.exp Ast.node) list))) = _menhir_stack in
        let _v : (Ast.exp Ast.node) = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 1638 "parser.ml"
         in
        let _endpos = _endpos__5_ in
        let _startpos = _startpos__1_ in
        
# 172 "parser.mly"
               ( loc _startpos _endpos @@ CStruct (i, fs) )
# 1645 "parser.ml"
         in
        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run348 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 14 "parser.mly"
       (string)
# 1658 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run374 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run373 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run372 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run350 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run345 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run344 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run343 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run341 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run339 _menhir_env (Obj.magic _menhir_stack) MenhirState349 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState349)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_loption_separated_nonempty_list_COMMA_gexp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__7_ = _endpos in
        let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__4_, _), _, (xs : (Ast.exp Ast.node list))) = _menhir_stack in
        let _v : (Ast.exp Ast.node) = let cs = 
# 232 "<standard.mly>"
    ( xs )
# 1720 "parser.ml"
         in
        let _endpos = _endpos__7_ in
        let _startpos = _startpos__1_ in
        
# 170 "parser.mly"
               ( loc _startpos _endpos @@ CArr (t, cs) )
# 1727 "parser.ml"
         in
        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_gexp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState349 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _endpos_id_, _menhir_s, (id : (
# 14 "parser.mly"
       (string)
# 1747 "parser.ml"
        )), _startpos_id_), _, (e : (Ast.exp Ast.node))) = _menhir_stack in
        let _v : (Ast.id * Ast.exp Ast.node) = 
# 176 "parser.mly"
                       ( (id, e) )
# 1752 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run348 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState384 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState384)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.id * Ast.exp Ast.node))) = _menhir_stack in
            let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1778 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_gfield_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState394 | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run374 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run373 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run372 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run350 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run345 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run344 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run343 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run341 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run339 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState394)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp Ast.node))) = _menhir_stack in
            let _v : (Ast.exp Ast.node list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1829 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState338 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__5_ = _endpos in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_name_, (name : (
# 14 "parser.mly"
       (string)
# 1852 "parser.ml"
            )), _startpos_name_), _, (init : (Ast.exp Ast.node))) = _menhir_stack in
            let _v : (Ast.decl) = let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            
# 108 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 1859 "parser.ml"
             in
            _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMI_decl_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.field list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState327 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.field list)) = _v in
        let _v : (Ast.field list) = 
# 144 "<standard.mly>"
    ( x )
# 1881 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_decl_field__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState334 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.field list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.field))), _endpos__2_) = _menhir_stack in
        let _v : (Ast.field list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1892 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_decl_field_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.ty * Ast.id) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Ast.ty * Ast.id) list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.ty)), _startpos_x_), _endpos_y_, (y : (
# 14 "parser.mly"
       (string)
# 1908 "parser.ml"
        )), _startpos_y_) = _menhir_stack in
        let _v : ((Ast.ty * Ast.id) list) = let x = 
# 167 "<standard.mly>"
    ( (x, y) )
# 1913 "parser.ml"
         in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 1918 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState400 | MenhirState178 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : ((Ast.ty * Ast.id) list)) = _v in
        let _v : ((Ast.ty * Ast.id) list) = 
# 144 "<standard.mly>"
    ( x )
# 1928 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_pair_ty_IDENT___ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run137 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position)) * _menhir_state * (Ast.ty list)) * Lexing.position)) * _menhir_state * (Ast.ty) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r =
      let ret =
        let t = t_inlined1 in
        
# 129 "parser.mly"
           ( RetVal t )
# 1948 "parser.ml"
        
      in
      let l = 
# 232 "<standard.mly>"
    ( xs )
# 1954 "parser.ml"
       in
      
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 1959 "parser.ml"
      
    in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 1968 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run127 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position)) * _menhir_state * (Ast.ty) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r =
      let ret =
        let t = t_inlined1 in
        
# 129 "parser.mly"
           ( RetVal t )
# 1986 "parser.ml"
        
      in
      
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 1992 "parser.ml"
      
    in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 2001 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run125 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position)) * _menhir_state * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 2017 "parser.ml"
       in
      
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 2022 "parser.ml"
      
    in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 2031 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run128 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState128 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | NULL ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | LBRACKET | RPAREN ->
            _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128

and _menhir_reduce139 : _menhir_env -> (('ttv_tail * _menhir_state * (Ast.ty) * Lexing.position)) * Lexing.position * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
    let _startpos = _startpos_t_ in
    let _v : (Ast.ty) = let r = 
# 133 "parser.mly"
                           ( RArray t )
# 2072 "parser.ml"
     in
    
# 122 "parser.mly"
           ( TRef r )
# 2077 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run35 : _menhir_env -> (('ttv_tail * _menhir_state * (Ast.ty) * Lexing.position)) * Lexing.position * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
    let _startpos = _startpos_t_ in
    let _v : (Ast.ty) = let r = 
# 133 "parser.mly"
                           ( RArray t )
# 2090 "parser.ml"
     in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 2095 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run72 : _menhir_env -> (('ttv_tail * _menhir_state * (Ast.ty) * Lexing.position)) * Lexing.position * _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
    let _startpos = _startpos_t_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r = 
# 133 "parser.mly"
                           ( RArray t )
# 2110 "parser.ml"
     in
    let _startpos_r_ = _startpos_t_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 2118 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run56 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state)) * _menhir_state * (Ast.ty) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_inlined1_, _), _, (t : (Ast.ty)), _startpos_t_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r =
      let ret = 
# 129 "parser.mly"
           ( RetVal t )
# 2134 "parser.ml"
       in
      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 2139 "parser.ml"
      
    in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 2148 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce146 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position)) * _menhir_state * (Ast.ty list)) * Lexing.position)) * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret =
        let t = t_inlined1 in
        
# 129 "parser.mly"
           ( RetVal t )
# 2162 "parser.ml"
        
      in
      let l = 
# 232 "<standard.mly>"
    ( xs )
# 2168 "parser.ml"
       in
      
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 2173 "parser.ml"
      
    in
    
# 122 "parser.mly"
           ( TRef r )
# 2179 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run54 : _menhir_env -> (((((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position)) * _menhir_state * (Ast.ty list)) * Lexing.position)) * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret =
        let t = t_inlined1 in
        
# 129 "parser.mly"
           ( RetVal t )
# 2195 "parser.ml"
        
      in
      let l = 
# 232 "<standard.mly>"
    ( xs )
# 2201 "parser.ml"
       in
      
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 2206 "parser.ml"
      
    in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 2212 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_ty_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.ty list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.ty list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.ty)), _startpos_x_) = _menhir_stack in
        let _v : (Ast.ty list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2227 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ty_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState364 | MenhirState260 | MenhirState145 | MenhirState130 | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.ty list)) = _v in
        let _v : (Ast.ty list) = 
# 144 "<standard.mly>"
    ( x )
# 2237 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ty__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce144 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position)) * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret =
        let t = t_inlined1 in
        
# 129 "parser.mly"
           ( RetVal t )
# 2253 "parser.ml"
        
      in
      
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 2259 "parser.ml"
      
    in
    
# 122 "parser.mly"
           ( TRef r )
# 2265 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run42 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position)) * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret =
        let t = t_inlined1 in
        
# 129 "parser.mly"
           ( RetVal t )
# 2281 "parser.ml"
        
      in
      
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 2287 "parser.ml"
      
    in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 2293 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce156 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = 
# 124 "parser.mly"
                       ( t )
# 2304 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce143 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position)) * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 2316 "parser.ml"
       in
      
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 2321 "parser.ml"
      
    in
    
# 122 "parser.mly"
           ( TRef r )
# 2327 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run40 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * (Ast.ty) * Lexing.position) * Lexing.position)) * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 2341 "parser.ml"
       in
      
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 2346 "parser.ml"
      
    in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 2352 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce97 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.ty list) = 
# 142 "<standard.mly>"
    ( [] )
# 2361 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_ty__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce142 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state)) * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _), _, (t : (Ast.ty)), _startpos_t_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 129 "parser.mly"
           ( RetVal t )
# 2373 "parser.ml"
       in
      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 2378 "parser.ml"
      
    in
    
# 122 "parser.mly"
           ( TRef r )
# 2384 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run32 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state)) * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_inlined1_, _), _, (t : (Ast.ty)), _startpos_t_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 129 "parser.mly"
           ( RetVal t )
# 2398 "parser.ml"
       in
      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 2403 "parser.ml"
      
    in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 2409 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.ty) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState33 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | QUESTION ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | IDENT _ | LBRACKET | NULL | RPAREN ->
            _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_reduce89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.block) = 
# 211 "<standard.mly>"
    ( [] )
# 2446 "parser.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.stmt Ast.node option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState302
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_option_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run288 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run287 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IFQ ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RETURN ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState297 in
            let _v : (Ast.stmt Ast.node option) = 
# 114 "<standard.mly>"
    ( None )
# 2539 "parser.ml"
             in
            _menhir_goto_option_stmt_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState297)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.exp Ast.node list) = 
# 142 "<standard.mly>"
    ( [] )
# 2558 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce29 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position)) * Lexing.position * (
# 14 "parser.mly"
       (string)
# 2565 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 2571 "parser.ml"
    )), _startpos_id_) = _menhir_stack in
    let _startpos = _startpos_e_ in
    let _endpos = _endpos_id_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_id_ in
    let _startpos = _startpos_e_ in
    
# 196 "parser.mly"
                        ( loc _startpos _endpos @@ Proj(e, id) )
# 2580 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_COMMA_vdecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState291 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.vdecl list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.vdecl)), _startpos_x_) = _menhir_stack in
        let _v : (Ast.vdecl list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2600 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState289 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.vdecl list)) = _v in
        let _v : (Ast.vdecl list) = 
# 144 "<standard.mly>"
    ( x )
# 2610 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run187 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run288 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run287 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState187 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IFQ ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState187 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState187 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RBRACE ->
        _menhir_reduce89 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187

and _menhir_goto_separated_nonempty_list_SEMI_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.id * Ast.exp Ast.node) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : ((Ast.id * Ast.exp Ast.node) list)) = _v in
        let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 144 "<standard.mly>"
    ( x )
# 2681 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_field__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Ast.id * Ast.exp Ast.node) list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.id * Ast.exp Ast.node))), _endpos__2_) = _menhir_stack in
        let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2692 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_field_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce32 : _menhir_env -> ((('ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position)) * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos_i_, _, (i : (Ast.exp Ast.node)), _startpos_i_), _endpos__4_) = _menhir_stack in
    let _startpos = _startpos_e_ in
    let _endpos = _endpos__4_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    
# 201 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 2708 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState310 | MenhirState161 | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.exp Ast.node list)) = _v in
        let _v : (Ast.exp Ast.node list) = 
# 144 "<standard.mly>"
    ( x )
# 2722 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.exp Ast.node list)) = _v in
        let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Ast.exp Ast.node)), _startpos_x_) = _menhir_stack in
        let _v : (Ast.exp Ast.node list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2733 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run79 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_run84 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run88 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState88 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState88 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState88 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run92 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run98 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run100 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState100 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState100 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState100 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_run102 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_run94 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run96 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run104 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104

and _menhir_run106 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106

and _menhir_run108 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108

and _menhir_run86 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run90 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run110 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110

and _menhir_run112 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112

and _menhir_run114 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114

and _menhir_run74 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _startpos ->
    let _menhir_stack = (_menhir_stack, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run81 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (Ast.exp Ast.node) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_list_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.prog) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (p : (Ast.prog))) = _menhir_stack in
            let _v : (Ast.prog) = 
# 104 "parser.mly"
                      ( p )
# 3498 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.prog)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState407 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.decl))), _, (xs : (Ast.prog))) = _menhir_stack in
        let _v : (Ast.prog) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3517 "parser.ml"
         in
        _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce95 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Ast.ty * Ast.id) list) = 
# 142 "<standard.mly>"
    ( [] )
# 3528 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_pair_ty_IDENT___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_SEMI_decl_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.field list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__5_ = _endpos in
        let (((_menhir_stack, _menhir_s, _startpos__1_), (name : (
# 15 "parser.mly"
       (string)
# 3548 "parser.ml"
        )), _startpos_name_), _, (xs : (Ast.field list))) = _menhir_stack in
        let _v : (Ast.decl) = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 3553 "parser.ml"
         in
        let _endpos = _endpos__5_ in
        let _startpos = _startpos__1_ in
        
# 112 "parser.mly"
    ( Gtdecl (loc _startpos _endpos (name, fs)) )
# 3560 "parser.ml"
         in
        _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run339 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 3573 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__2_ = _endpos in
        let (_menhir_stack, _menhir_s, (id : (
# 15 "parser.mly"
       (string)
# 3589 "parser.ml"
        )), _startpos_id_) = _menhir_stack in
        let _v : (Ast.exp Ast.node) = let r = 
# 134 "parser.mly"
              ( RStruct id )
# 3594 "parser.ml"
         in
        let _startpos_r_ = _startpos_id_ in
        let _endpos = _endpos__2_ in
        let _startpos = _startpos_r_ in
        
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 3602 "parser.ml"
         in
        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
    | QUESTION ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
    | LBRACKET ->
        _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run341 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__2_ = _endpos in
        let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _v : (Ast.exp Ast.node) = let r = 
# 132 "parser.mly"
            ( RString )
# 3632 "parser.ml"
         in
        let _startpos_r_ = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _startpos = _startpos_r_ in
        
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 3640 "parser.ml"
         in
        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
    | QUESTION ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
    | LBRACKET ->
        _menhir_reduce138 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run343 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 165 "parser.mly"
               ( loc _startpos _endpos @@ CBool true )
# 3665 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run344 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 13 "parser.mly"
       (string)
# 3672 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_s_ = _endpos in
    let (s : (
# 13 "parser.mly"
       (string)
# 3681 "parser.ml"
    )) = _v in
    let _startpos_s_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    
# 168 "parser.mly"
               ( loc _startpos _endpos @@ CStr s )
# 3689 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run345 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState345 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState345 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState345 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState345 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState345 in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run348 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState347 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState347 in
                let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 142 "<standard.mly>"
    ( [] )
# 3728 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_SEMI_gfield__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState347)
        | QUESTION ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState345

and _menhir_run350 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState350 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TVOID ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState352 in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos__2_ = _endpos in
                    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_inlined1_, _), _, _startpos__1_inlined1_) = _menhir_stack in
                    let _v : (Ast.exp Ast.node) = let r =
                      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 3798 "parser.ml"
                       in
                      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 3803 "parser.ml"
                      
                    in
                    let _startpos_r_ = _startpos__1_ in
                    let _endpos = _endpos__2_ in
                    let _startpos = _startpos_r_ in
                    
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 3812 "parser.ml"
                     in
                    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
                | QUESTION ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState350

and _menhir_run372 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "parser.mly"
       (int64)
# 3853 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_i_ = _endpos in
    let (i : (
# 11 "parser.mly"
       (int64)
# 3862 "parser.ml"
    )) = _v in
    let _startpos_i_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    
# 167 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 3870 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run373 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 14 "parser.mly"
       (string)
# 3877 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_id_ = _endpos in
    let (id : (
# 14 "parser.mly"
       (string)
# 3886 "parser.ml"
    )) = _v in
    let _startpos_id_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    
# 173 "parser.mly"
             (loc _startpos _endpos @@ Id id )
# 3894 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run374 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 166 "parser.mly"
               ( loc _startpos _endpos @@ CBool false )
# 3909 "parser.ml"
     in
    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 15 "parser.mly"
       (string)
# 3916 "parser.ml"
) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let (_menhir_stack, _menhir_s, (id : (
# 15 "parser.mly"
       (string)
# 3925 "parser.ml"
    )), _startpos_id_) = _menhir_stack in
    let _startpos = _startpos_id_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r = 
# 134 "parser.mly"
              ( RStruct id )
# 3932 "parser.ml"
     in
    let _startpos_r_ = _startpos_id_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 3940 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run6 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r = 
# 132 "parser.mly"
            ( RString )
# 3955 "parser.ml"
     in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 3963 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.ty) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | QUESTION ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | IDENT _ | NULL | RPAREN ->
            _menhir_reduce142 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState38 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | QUESTION ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
                    | COMMA | IDENT _ | LBRACKET | NULL | RPAREN ->
                        _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
            | COMMA | IDENT _ | LBRACKET | NULL | QUESTION | RPAREN ->
                _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | QUESTION ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | IDENT _ | NULL | RPAREN ->
            _menhir_reduce144 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState364 | MenhirState260 | MenhirState145 | MenhirState130 | MenhirState45 | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.ty)), _startpos_x_) = _menhir_stack in
            let _v : (Ast.ty list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4123 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_ty_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | QUESTION ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | IDENT _ | NULL | RPAREN ->
            _menhir_reduce146 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN ->
            _menhir_reduce142 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState409 | MenhirState320 | MenhirState187 | MenhirState314 | MenhirState310 | MenhirState305 | MenhirState297 | MenhirState295 | MenhirState282 | MenhirState273 | MenhirState266 | MenhirState255 | MenhirState248 | MenhirState238 | MenhirState231 | MenhirState221 | MenhirState211 | MenhirState205 | MenhirState197 | MenhirState195 | MenhirState189 | MenhirState0 | MenhirState9 | MenhirState168 | MenhirState159 | MenhirState161 | MenhirState18 | MenhirState63 | MenhirState67 | MenhirState116 | MenhirState114 | MenhirState112 | MenhirState110 | MenhirState108 | MenhirState106 | MenhirState104 | MenhirState102 | MenhirState100 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState84 | MenhirState81 | MenhirState79 | MenhirState74 | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState70 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | QUESTION ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130)
        | LBRACKET ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState123 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | NULL ->
                        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                    | QUESTION ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
                    | COMMA | LBRACKET | RPAREN ->
                        _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
            | COMMA | LBRACKET | RPAREN ->
                _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN ->
            _menhir_reduce144 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN ->
            _menhir_reduce146 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145)
        | LBRACKET ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState142 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | NULL ->
                        _menhir_run125 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                    | QUESTION ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
                    | LBRACKET ->
                        _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142)
            | LBRACKET ->
                _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
        | QUESTION ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState159 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState159 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LENGTH ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState159 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BANG ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | DASH ->
                        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FALSE ->
                        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IDENT _v ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState161 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState161 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LENGTH ->
                        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NEW ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState161 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TILDE ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | UIDENT _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | RBRACE ->
                        _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161)
                | QUESTION ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | STRING _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState159 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState400 | MenhirState181 | MenhirState178 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181)
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (x : (Ast.ty)), _startpos_x_), _endpos_y_, (y : (
# 14 "parser.mly"
       (string)
# 4619 "parser.ml"
                )), _startpos_y_) = _menhir_stack in
                let _v : ((Ast.ty * Ast.id) list) = let x = 
# 167 "<standard.mly>"
    ( (x, y) )
# 4624 "parser.ml"
                 in
                
# 241 "<standard.mly>"
    ( [ x ] )
# 4629 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BANG ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | DASH ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LENGTH ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NEW ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TILDE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | UIDENT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState238)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | QUESTION ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState226 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState245 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | IDENT _v ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | EQ ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | BANG ->
                                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | DASH ->
                                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | FALSE ->
                                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | IDENT _v ->
                                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | INT _v ->
                                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | LENGTH ->
                                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | LPAREN ->
                                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | NEW ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | STRING _v ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TBOOL ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TILDE ->
                                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TINT ->
                                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TRUE ->
                                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | TSTRING ->
                                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | UIDENT _v ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | QUESTION ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
                    | LBRACKET ->
                        _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245)
            | LBRACKET ->
                _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BANG ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | DASH ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState255 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState255 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LENGTH ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NEW ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState255 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TILDE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | UIDENT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | QUESTION ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BANG ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | DASH ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState273 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | INT _v ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState273 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LENGTH ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NEW ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState273 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TILDE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | UIDENT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState273)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | QUESTION ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState279 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | EQ ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | BANG ->
                            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | DASH ->
                            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FALSE ->
                            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IDENT _v ->
                            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState282 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | INT _v ->
                            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState282 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LENGTH ->
                            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NEW ->
                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | STRING _v ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState282 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TBOOL ->
                            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TILDE ->
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TINT ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TRUE ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TSTRING ->
                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | UIDENT _v ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let ((_menhir_stack, _, _menhir_s), _, _, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | QUESTION ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState334 | MenhirState327 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos_id_ = _endpos in
            let (id : (
# 14 "parser.mly"
       (string)
# 5095 "parser.ml"
            )) = _v in
            let _startpos_id_ = _startpos in
            let (_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_) = _menhir_stack in
            let _v : (Ast.field) = 
# 115 "parser.mly"
                  ( { fieldName=id; ftyp=t } )
# 5102 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState334)
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (Ast.field))) = _menhir_stack in
                let _v : (Ast.field list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5136 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMI_decl_field_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState352 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_inlined1_, _), _, (t : (Ast.ty)), _startpos_t_) = _menhir_stack in
            let _v : (Ast.exp Ast.node) = let r =
              let ret = 
# 129 "parser.mly"
           ( RetVal t )
# 5171 "parser.ml"
               in
              
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 5176 "parser.ml"
              
            in
            let _startpos_r_ = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _startpos = _startpos_r_ in
            
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 5185 "parser.ml"
             in
            _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
        | QUESTION ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState350 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState364 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState364 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState364 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState364 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState364 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) MenhirState364
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState364)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TVOID ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState359 in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | NULL ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _endpos__2_ = _endpos in
                        let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, _startpos__1_inlined1_) = _menhir_stack in
                        let _v : (Ast.exp Ast.node) = let r =
                          let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 5263 "parser.ml"
                           in
                          
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 5268 "parser.ml"
                          
                        in
                        let _startpos_r_ = _startpos__1_ in
                        let _endpos = _endpos__2_ in
                        let _startpos = _startpos_r_ in
                        
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 5277 "parser.ml"
                         in
                        _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
                    | QUESTION ->
                        _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
                    | LBRACKET ->
                        _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState359)
            | LBRACKET ->
                _menhir_reduce156 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState359 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos__3_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
            let _v : (Ast.exp Ast.node) = let r =
              let ret =
                let t = t_inlined1 in
                
# 129 "parser.mly"
           ( RetVal t )
# 5330 "parser.ml"
                
              in
              
# 136 "parser.mly"
                                        ( RFun ([t], ret) )
# 5336 "parser.ml"
              
            in
            let _startpos_r_ = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _startpos = _startpos_r_ in
            
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 5345 "parser.ml"
             in
            _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
        | QUESTION ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState367 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | NULL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__2_ = _endpos in
            let (((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _, (xs : (Ast.ty list))), _endpos__5_), _, (t_inlined1 : (Ast.ty)), _startpos_t_inlined1_) = _menhir_stack in
            let _v : (Ast.exp Ast.node) = let r =
              let ret =
                let t = t_inlined1 in
                
# 129 "parser.mly"
           ( RetVal t )
# 5376 "parser.ml"
                
              in
              let l = 
# 232 "<standard.mly>"
    ( xs )
# 5382 "parser.ml"
               in
              
# 138 "parser.mly"
       ( RFun (t :: l, ret) )
# 5387 "parser.ml"
              
            in
            let _startpos_r_ = _startpos__1_ in
            let _endpos = _endpos__2_ in
            let _startpos = _startpos_r_ in
            
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 5396 "parser.ml"
             in
            _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
        | QUESTION ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState338 | MenhirState394 | MenhirState389 | MenhirState349 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState376 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos__2_ = _endpos in
                    let ((_menhir_stack, _menhir_s, (t : (Ast.ty)), _startpos_t_), _endpos__3_, _) = _menhir_stack in
                    let _v : (Ast.exp Ast.node) = let r = 
# 133 "parser.mly"
                           ( RArray t )
# 5435 "parser.ml"
                     in
                    let _startpos_r_ = _startpos_t_ in
                    let _endpos = _endpos__2_ in
                    let _startpos = _startpos_r_ in
                    
# 164 "parser.mly"
               ( loc _startpos _endpos @@ CNull r )
# 5443 "parser.ml"
                     in
                    _menhir_goto_gexp _menhir_env _menhir_stack _menhir_s _v
                | QUESTION ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState345 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState387 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | FALSE ->
                        _menhir_run374 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IDENT _v ->
                        _menhir_run373 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState389 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run372 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState389 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run350 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NEW ->
                        _menhir_run345 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run344 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState389 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run343 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run341 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | UIDENT _v ->
                        _menhir_run339 _menhir_env (Obj.magic _menhir_stack) MenhirState389 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | RBRACE ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_s = MenhirState389 in
                        let _v : (Ast.exp Ast.node list) = 
# 142 "<standard.mly>"
    ( [] )
# 5517 "parser.ml"
                         in
                        _menhir_goto_loption_separated_nonempty_list_COMMA_gexp__ _menhir_env _menhir_stack _menhir_s _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState389)
                | QUESTION ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState387)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState407 | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TBOOL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TINT ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TSTRING ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | UIDENT _v ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState400 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) MenhirState400
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState400)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LBRACKET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.stmt Ast.node) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.stmt Ast.node))) = _menhir_stack in
        let _v : (Ast.stmt Ast.node option) = 
# 116 "<standard.mly>"
    ( Some x )
# 5608 "parser.ml"
         in
        _menhir_goto_option_stmt_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState320 | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FOR ->
            _menhir_run288 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run287 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState320 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IFQ ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState320 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RETURN ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState320 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RBRACE ->
            _menhir_reduce89 _menhir_env (Obj.magic _menhir_stack) MenhirState320
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState320)
    | MenhirState409 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (s : (Ast.stmt Ast.node))) = _menhir_stack in
            let _v : (Ast.stmt Ast.node) = 
# 101 "parser.mly"
               ( s )
# 5676 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.stmt Ast.node)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMI_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.id * Ast.exp Ast.node) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__5_ = _endpos in
        let (((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (
# 15 "parser.mly"
       (string)
# 5707 "parser.ml"
        )), _startpos_t_), _, (xs : ((Ast.id * Ast.exp Ast.node) list))) = _menhir_stack in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.exp Ast.node) = let cs = 
# 232 "<standard.mly>"
    ( xs )
# 5714 "parser.ml"
         in
        let _endpos = _endpos__5_ in
        let _startpos = _startpos__1_ in
        
# 195 "parser.mly"
                        ( loc _startpos _endpos @@ CStruct(t, cs) )
# 5721 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run17 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 14 "parser.mly"
       (string)
# 5734 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run25 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state)) * _menhir_state * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__2_ = _endpos in
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_inlined1_, _), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _v : (Ast.exp Ast.node) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 5799 "parser.ml"
       in
      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 5804 "parser.ml"
      
    in
    let _startpos_r_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_r_ in
    
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ CNull r )
# 5813 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce140 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 15 "parser.mly"
       (string)
# 5820 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : (
# 15 "parser.mly"
       (string)
# 5826 "parser.ml"
    )), _startpos_id_) = _menhir_stack in
    let _startpos = _startpos_id_ in
    let _v : (Ast.ty) = let r = 
# 134 "parser.mly"
              ( RStruct id )
# 5832 "parser.ml"
     in
    
# 122 "parser.mly"
           ( TRef r )
# 5837 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run2 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 15 "parser.mly"
       (string)
# 5844 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (id : (
# 15 "parser.mly"
       (string)
# 5852 "parser.ml"
    )), _startpos_id_) = _menhir_stack in
    let _startpos = _startpos_id_ in
    let _v : (Ast.ty) = let r = 
# 134 "parser.mly"
              ( RStruct id )
# 5858 "parser.ml"
     in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 5863 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce138 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r = 
# 132 "parser.mly"
            ( RString )
# 5874 "parser.ml"
     in
    
# 122 "parser.mly"
           ( TRef r )
# 5879 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run5 : _menhir_env -> 'ttv_tail * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r = 
# 132 "parser.mly"
            ( RString )
# 5892 "parser.ml"
     in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 5897 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce141 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state)) * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_, _), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 5909 "parser.ml"
       in
      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 5914 "parser.ml"
      
    in
    
# 122 "parser.mly"
           ( TRef r )
# 5920 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run24 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state)) * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos__2_inlined1_, _), _, _startpos__1_inlined1_) = _menhir_stack in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = let r =
      let ret = 
# 128 "parser.mly"
           ( RetVoid )
# 5934 "parser.ml"
       in
      
# 135 "parser.mly"
                                   ( RFun ([], ret) )
# 5939 "parser.ml"
      
    in
    
# 123 "parser.mly"
                    ( TNullRef r )
# 5945 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_reduce31 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 14 "parser.mly"
       (string)
# 5952 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_id_, _menhir_s, (id : (
# 14 "parser.mly"
       (string)
# 5958 "parser.ml"
    )), _startpos_id_) = _menhir_stack in
    let _startpos = _startpos_id_ in
    let _endpos = _endpos_id_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    
# 199 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 5967 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_lhs : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp Ast.node) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_loption_separated_nonempty_list_COMMA_vdecl__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_stack = (_menhir_stack, _endpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState295 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState295 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState295 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState295 in
            let _v : (Ast.exp Ast.node option) = 
# 114 "<standard.mly>"
    ( None )
# 6074 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState295)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (Ast.exp Ast.node) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AMPER | BANGEQ | BAR | COMMA | DASH | DOT | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Ast.exp Ast.node) = let u = 
# 160 "parser.mly"
          ( Lognot )
# 6109 "parser.ml"
             in
            let _startpos_u_ = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos_u_ in
            
# 205 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 6117 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState310 | MenhirState161 | MenhirState116 | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LENGTH ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Ast.exp Ast.node)), _startpos_x_) = _menhir_stack in
            let _v : (Ast.exp Ast.node list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6214 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AMPER | BANGEQ | BAR | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 143 "parser.mly"
           ( Mul )
# 6242 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6249 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 141 "parser.mly"
           ( Add )
# 6334 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6341 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 154 "parser.mly"
           ( Shl )
# 6375 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6382 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _startpos__1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 142 "parser.mly"
           ( Sub )
# 6412 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6419 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | IAND | IOR | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 147 "parser.mly"
           ( Lte )
# 6459 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6466 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 156 "parser.mly"
           ( Sar )
# 6500 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6507 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 155 "parser.mly"
           ( Shr )
# 6541 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6548 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | IAND | IOR | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 146 "parser.mly"
           ( Lt )
# 6588 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6595 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | IOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 153 "parser.mly"
           ( IOr )
# 6653 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6660 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | IAND | IOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 152 "parser.mly"
           ( IAnd )
# 6716 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6723 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | IAND | IOR | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 149 "parser.mly"
           ( Gte )
# 6763 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6770 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | GT | GTEQ | IAND | IOR | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 148 "parser.mly"
           ( Gt )
# 6810 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6817 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | IAND | IOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 144 "parser.mly"
           ( Eq )
# 6865 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6872 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | BAR | COMMA | EOF | IAND | IOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 151 "parser.mly"
           ( Or )
# 6926 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6933 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | EOF | EQEQ | IAND | IOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 145 "parser.mly"
           ( Neq )
# 6981 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 6988 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BAR | COMMA | EOF | IAND | IOR | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos_e1_ in
            let _endpos = _endpos_e2_ in
            let _v : (Ast.exp Ast.node) = let b = 
# 150 "parser.mly"
           ( And )
# 7040 "parser.ml"
             in
            let _endpos = _endpos_e2_ in
            let _startpos = _startpos_e1_ in
            
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 7047 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | AMPER | BANGEQ | BAR | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Ast.exp Ast.node) = let u = 
# 159 "parser.mly"
          ( Neg )
# 7077 "parser.ml"
             in
            let _startpos_u_ = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos_u_ in
            
# 205 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 7085 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__4_ = _endpos in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _startpos__2_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__4_ in
            let _v : (Ast.exp Ast.node) = let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            
# 207 "parser.mly"
                        ( loc _startpos _endpos @@ Length(e) )
# 7149 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState19 | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : (Ast.exp Ast.node) = 
# 208 "parser.mly"
                        ( e )
# 7213 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _endpos_id_, _menhir_s, (id : (
# 14 "parser.mly"
       (string)
# 7272 "parser.ml"
            )), _startpos_id_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.id * Ast.exp Ast.node) = 
# 211 "parser.mly"
                      ( (id, e) )
# 7277 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMI ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_stack = (_menhir_stack, _endpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156)
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (Ast.id * Ast.exp Ast.node))) = _menhir_stack in
                let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7303 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMI_field_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                    let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ARROW ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | BANG ->
                            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | DASH ->
                            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | FALSE ->
                            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | IDENT _v ->
                            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | INT _v ->
                            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LENGTH ->
                            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | LPAREN ->
                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | NEW ->
                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | STRING _v ->
                            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TBOOL ->
                            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TILDE ->
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TINT ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TRUE ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | TSTRING ->
                            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | UIDENT _v ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _, _menhir_s, _, _), _), _, _, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | AMPER | BANGEQ | BAR | COMMA | DASH | DOT | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LBRACKET | LPAREN | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos_e1_, _, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos__5_) = _menhir_stack in
                let _startpos = _startpos__1_ in
                let _endpos = _endpos__5_ in
                let _v : (Ast.exp Ast.node) = let _endpos = _endpos__5_ in
                let _startpos = _startpos__1_ in
                
# 193 "parser.mly"
    ( loc _startpos _endpos @@ NewArr(t, e1) )
# 7440 "parser.ml"
                 in
                _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__10_ = _endpos in
            let ((((((_menhir_stack, _menhir_s, _startpos__1_), _, (t : (Ast.ty)), _startpos_t_), _endpos_e1_, _, (e1 : (Ast.exp Ast.node)), _startpos_e1_), _endpos__5_), _endpos_u_, (u : (
# 14 "parser.mly"
       (string)
# 7507 "parser.ml"
            )), _startpos_u_), _endpos_e2_, _, (e2 : (Ast.exp Ast.node)), _startpos_e2_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__10_ in
            let _v : (Ast.exp Ast.node) = let _endpos = _endpos__10_ in
            let _startpos = _startpos__1_ in
            
# 198 "parser.mly"
                        ( loc _startpos _endpos @@ NewArrInit(t, e1, u, e2) )
# 7516 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | AMPER | BANGEQ | BAR | COMMA | DASH | DOT | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _v : (Ast.exp Ast.node) = let u = 
# 161 "parser.mly"
          ( Bitnot )
# 7544 "parser.ml"
             in
            let _startpos_u_ = _startpos__1_ in
            let _endpos = _endpos_e_ in
            let _startpos = _startpos_u_ in
            
# 205 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 7552 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.exp Ast.node) = 
# 98 "parser.mly"
              ( e )
# 7583 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.exp Ast.node)) = _v in
            Obj.magic _1
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState189 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 7733 "parser.ml"
            )), _startpos_id_), _endpos_init_, _, (init : (Ast.exp Ast.node)), _startpos_init_) = _menhir_stack in
            let _startpos = _startpos__1_ in
            let _v : (Ast.vdecl) = 
# 214 "parser.mly"
                             ( (id, init) )
# 7739 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
            (match _menhir_s with
            | MenhirState291 | MenhirState289 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | VAR ->
                        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState291 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState291)
                | SEMI ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, (x : (Ast.vdecl)), _startpos_x_) = _menhir_stack in
                    let _v : (Ast.vdecl list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7765 "parser.ml"
                     in
                    _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState409 | MenhirState320 | MenhirState187 | MenhirState297 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | SEMI ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _endpos__2_ = _endpos in
                    let (_menhir_stack, _menhir_s, (d : (Ast.vdecl)), _startpos_d_) = _menhir_stack in
                    let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__2_ in
                    let _startpos = _startpos_d_ in
                    
# 217 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 7791 "parser.ml"
                     in
                    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__3_ = _endpos in
            let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__3_ in
            let _startpos = _startpos__1_ in
            
# 223 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 7861 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState207
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState221 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState233
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState240
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState240)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState248 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState257
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState257)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState266 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState273 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState282 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState305 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos__4_ = _endpos in
            let ((_menhir_stack, _menhir_s, (p : (Ast.exp Ast.node)), _startpos_p_), _endpos_e_, _, (e : (Ast.exp Ast.node)), _startpos_e_) = _menhir_stack in
            let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__4_ in
            let _startpos = _startpos_p_ in
            
# 218 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 8545 "parser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState409 | MenhirState187 | MenhirState320 | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EQ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos_id_, (id : (
# 14 "parser.mly"
       (string)
# 8587 "parser.ml"
                    )), _startpos_id_) = _menhir_stack in
                    let _startpos = _startpos_e_ in
                    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_id_ in
                    let _startpos = _startpos_e_ in
                    
# 182 "parser.mly"
                        ( loc _startpos _endpos @@ Proj (e, id) )
# 8595 "parser.ml"
                     in
                    _menhir_goto_lhs _menhir_env _menhir_stack _menhir_s _v _startpos
                | AMPER | BANGEQ | BAR | DASH | DOT | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LBRACKET | LPAREN | LT | LTEQ | LTLT | PLUS | STAR ->
                    _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _, _menhir_s, _, _), _, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LENGTH ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314)
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState310 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState310 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LENGTH ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState310 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) MenhirState310
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState310)
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _endpos_e_, _menhir_s, (e : (Ast.exp Ast.node)), _startpos_e_), _endpos_i_, _, (i : (Ast.exp Ast.node)), _startpos_i_), _endpos__4_) = _menhir_stack in
                let _startpos = _startpos_e_ in
                let _v : (Ast.exp Ast.node) = let _endpos = _endpos__4_ in
                let _startpos = _startpos_e_ in
                
# 181 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 8781 "parser.ml"
                 in
                _menhir_goto_lhs _menhir_env _menhir_stack _menhir_s _v _startpos
            | AMPER | BANGEQ | BAR | DASH | DOT | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LBRACKET | LPAREN | LT | LTEQ | LTLT | PLUS | STAR ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState295 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AMPER ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | BANGEQ ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | BAR ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack)
        | DASH ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DOT ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | GTEQ ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | GTGT ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack)
        | GTGTGT ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | IAND ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | IOR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LT ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack)
        | LTEQ ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack)
        | LTLT ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _endpos_x_, _menhir_s, (x : (Ast.exp Ast.node)), _startpos_x_) = _menhir_stack in
            let _v : (Ast.exp Ast.node option) = 
# 116 "<standard.mly>"
    ( Some x )
# 8849 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 8864 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | QUESTION ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
    | LBRACKET ->
        _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | QUESTION ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
    | LBRACKET ->
        _menhir_reduce138 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState19 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TVOID ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState21 in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | QUESTION ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                | LBRACKET ->
                    _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run65 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 14 "parser.mly"
       (string)
# 9000 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.prog) = 
# 211 "<standard.mly>"
    ( [] )
# 9012 "parser.ml"
     in
    _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 9019 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUESTION ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | IDENT _ | LBRACKET | NULL | RPAREN ->
        _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run176 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUESTION ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | IDENT _ | LBRACKET | NULL | RPAREN ->
        _menhir_reduce138 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run325 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | UIDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState327 in
                let _v : (Ast.field list) = 
# 142 "<standard.mly>"
    ( [] )
# 9138 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_SEMI_decl_field__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState327)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState27 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TVOID ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState29 in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | QUESTION ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                | COMMA | IDENT _ | LBRACKET | NULL | RPAREN ->
                    _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run336 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run374 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run373 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState338 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run372 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState338 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run350 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run345 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run344 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState338 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run343 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run341 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run339 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState409 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState407 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState402 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState400 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _, _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState394 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState389 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState387 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState384 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState376 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState367 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState364 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState359 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState352 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState350 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState349 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState347 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState345 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState338 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState334 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState327 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState320 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState314 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState310 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState305 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState302 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState295 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState291 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState289 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState285 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState284 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState282 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState276 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState275 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState273 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState269 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState268 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState266 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState260 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState257 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState248 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState241 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState240 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState234 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState226 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState224 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState223 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState221 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState214 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState213 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState209 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState189 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState178 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _, _menhir_s, _, _), _), _, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run188 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run193 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | DASH ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | INT _v ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LENGTH ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TILDE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
       (string)
# 9916 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | QUESTION ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | LBRACKET | RPAREN ->
        _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NULL ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
    | QUESTION ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | LBRACKET | RPAREN ->
        _menhir_reduce138 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run7 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 186 "parser.mly"
                        ( loc _startpos _endpos @@ CBool true )
# 9968 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = 
# 121 "parser.mly"
           ( TInt )
# 9981 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _v : (Ast.ty) = 
# 125 "parser.mly"
           ( TBool )
# 10035 "parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v _startpos

and _menhir_run13 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 13 "parser.mly"
       (string)
# 10042 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_s_ = _endpos in
    let (s : (
# 13 "parser.mly"
       (string)
# 10051 "parser.ml"
    )) = _v in
    let _startpos_s_ = _startpos in
    let _startpos = _startpos_s_ in
    let _endpos = _endpos_s_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    
# 189 "parser.mly"
                        ( loc _startpos _endpos @@ CStr s )
# 10061 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run197 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState197 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState197 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SEMI ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState197 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos__2_ = _endpos in
        let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _v : (Ast.stmt Ast.node) = let _endpos = _endpos__2_ in
        let _startpos = _startpos__1_ in
        
# 222 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 10100 "parser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState197 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState14 in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState16 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState16 in
                let _v : ((Ast.id * Ast.exp Ast.node) list) = 
# 142 "<standard.mly>"
    ( [] )
# 10157 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_SEMI_field__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
        | QUESTION ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let _menhir_s = MenhirState57 in
        let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TVOID ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState59 in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | NULL ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p
                | QUESTION ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                | COMMA | LBRACKET | RPAREN ->
                    _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run64 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 11 "parser.mly"
       (int64)
# 10330 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos_i_ = _endpos in
    let (i : (
# 11 "parser.mly"
       (int64)
# 10339 "parser.ml"
    )) = _v in
    let _startpos_i_ = _startpos in
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    
# 188 "parser.mly"
                        ( loc _startpos _endpos @@ CInt i )
# 10349 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run201 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState202 in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _menhir_s = MenhirState226 in
                let _menhir_stack = (_menhir_stack, _endpos, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ARROW ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LPAREN ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TVOID ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_s = MenhirState228 in
                        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                        let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | IDENT _v ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                            let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | EQ ->
                                let _menhir_stack = Obj.magic _menhir_stack in
                                let _menhir_env = _menhir_discard _menhir_env in
                                let _tok = _menhir_env._menhir_token in
                                (match _tok with
                                | BANG ->
                                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | DASH ->
                                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | FALSE ->
                                    _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | IDENT _v ->
                                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState231 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | INT _v ->
                                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState231 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | LENGTH ->
                                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | LPAREN ->
                                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | NEW ->
                                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | STRING _v ->
                                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState231 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | TBOOL ->
                                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | TILDE ->
                                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | TINT ->
                                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | TRUE ->
                                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | TSTRING ->
                                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | UIDENT _v ->
                                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                                | _ ->
                                    assert (not _menhir_env._menhir_error);
                                    _menhir_env._menhir_error <- true;
                                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let _menhir_stack = Obj.magic _menhir_stack in
                                let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                        | QUESTION ->
                            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
                        | LBRACKET ->
                            _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | UIDENT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | TBOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TINT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TSTRING ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | UIDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226)
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState202 in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EQ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BANG ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | DASH ->
                        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FALSE ->
                        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IDENT _v ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState221 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState221 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LENGTH ->
                        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NEW ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState221 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TILDE ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | UIDENT _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState221)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | QUESTION ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack)
            | LBRACKET ->
                _menhir_reduce138 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | UIDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState202 in
            let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENT _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _endpos = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EQ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | BANG ->
                        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | DASH ->
                        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | FALSE ->
                        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | IDENT _v ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState205 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | INT _v ->
                        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState205 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LENGTH ->
                        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | LPAREN ->
                        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | NEW ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | STRING _v ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState205 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TBOOL ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TILDE ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TINT ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TRUE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | TSTRING ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | UIDENT _v ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _, _), _, _, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | QUESTION ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack)
            | LBRACKET ->
                _menhir_reduce140 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run210 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | DASH ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LENGTH ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NEW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TBOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TILDE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TINT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TSTRING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | UIDENT _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run287 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 14 "parser.mly"
       (string)
# 10706 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _endpos_id_, _menhir_s, (id : (
# 14 "parser.mly"
       (string)
# 10718 "parser.ml"
        )), _startpos_id_) = _menhir_stack in
        let _startpos = _startpos_id_ in
        let _v : (Ast.exp Ast.node) = let _endpos = _endpos_id_ in
        let _startpos = _startpos_id_ in
        
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 10726 "parser.ml"
         in
        _menhir_goto_lhs _menhir_env _menhir_stack _menhir_s _v _startpos
    | AMPER | BANGEQ | BAR | DASH | DOT | EQEQ | GT | GTEQ | GTGT | GTGTGT | IAND | IOR | LBRACKET | LPAREN | LT | LTEQ | LTLT | PLUS | STAR ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run288 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _startpos = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VAR ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState289 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEMI ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState289 in
            let _v : (Ast.vdecl list) = 
# 142 "<standard.mly>"
    ( [] )
# 10759 "parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState289)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run66 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _endpos__1_ = _endpos in
    let _startpos__1_ = _startpos in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : (Ast.exp Ast.node) = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    
# 187 "parser.mly"
                        ( loc _startpos _endpos @@ CBool false )
# 10786 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and exp_top : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GLOBAL ->
        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRUCT ->
        _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TVOID ->
        _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175)

and stmt_top : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | DASH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FOR ->
        _menhir_run288 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run287 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IFQ ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT _v ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LENGTH ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RETURN ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TBOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TILDE ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TINT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TSTRING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UIDENT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState409 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState409)

# 269 "<standard.mly>"
  

# 11028 "parser.ml"
