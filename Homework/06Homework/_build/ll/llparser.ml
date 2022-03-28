
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | XOR
    | VOID
    | UID of (
# 63 "ll/llparser.mly"
       (string)
# 13 "ll/llparser.ml"
  )
    | TYPE
    | TO
    | SUB
    | STRING of (
# 64 "ll/llparser.mly"
       (string)
# 21 "ll/llparser.ml"
  )
    | STORE
    | STAR
    | SLT
    | SLE
    | SHL
    | SGT
    | SGE
    | RPAREN
    | RET
    | RBRACKET
    | RBRACE
    | OR
    | NULL
    | NE
    | MUL
    | LSHR
    | LPAREN
    | LOAD
    | LBRACKET
    | LBRACE
    | LBL of (
# 61 "ll/llparser.mly"
       (string)
# 46 "ll/llparser.ml"
  )
    | LABEL
    | INT of (
# 60 "ll/llparser.mly"
       (int)
# 52 "ll/llparser.ml"
  )
    | ICMP
    | I8
    | I64
    | I32
    | I1
    | GLOBAL
    | GID of (
# 62 "ll/llparser.mly"
       (string)
# 63 "ll/llparser.ml"
  )
    | GEP
    | EXTERNAL
    | EQUALS
    | EQ
    | EOF
    | ENTRY
    | DEFINE
    | DECLARE
    | CROSS
    | COMMA
    | COLON
    | CALL
    | BR
    | BITCAST
    | ASHR
    | AND
    | ALLOCA
    | ADD
  
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
  | MenhirState193
  | MenhirState192
  | MenhirState191
  | MenhirState189
  | MenhirState188
  | MenhirState182
  | MenhirState176
  | MenhirState167
  | MenhirState162
  | MenhirState161
  | MenhirState156
  | MenhirState154
  | MenhirState153
  | MenhirState152
  | MenhirState149
  | MenhirState148
  | MenhirState146
  | MenhirState145
  | MenhirState143
  | MenhirState141
  | MenhirState140
  | MenhirState138
  | MenhirState137
  | MenhirState134
  | MenhirState133
  | MenhirState131
  | MenhirState130
  | MenhirState128
  | MenhirState124
  | MenhirState123
  | MenhirState121
  | MenhirState119
  | MenhirState118
  | MenhirState115
  | MenhirState113
  | MenhirState109
  | MenhirState107
  | MenhirState104
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState99
  | MenhirState97
  | MenhirState96
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState71
  | MenhirState67
  | MenhirState64
  | MenhirState63
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState48
  | MenhirState47
  | MenhirState45
  | MenhirState44
  | MenhirState40
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState32
  | MenhirState31
  | MenhirState28
  | MenhirState26
  | MenhirState22
  | MenhirState19
  | MenhirState17
  | MenhirState16
  | MenhirState11
  | MenhirState10
  | MenhirState5

# 1 "ll/llparser.mly"
   open Ll
   open Llutil.Parsing


# 181 "ll/llparser.ml"

let rec _menhir_goto_ty_operand_list_rev : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ll.ty * Ll.operand) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (tos : ((Ll.ty * Ll.operand) list))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.operand) list) = 
# 181 "ll/llparser.mly"
    ( List.rev tos )
# 219 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState121 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 235 "ll/llparser.ml"
                ))), _, (t : (Ll.ty))), _, (o : (Ll.operand))), _, (args : ((Ll.ty * Ll.operand) list))) = _menhir_stack in
                let _v : (Ll.uid * Ll.insn) = 
# 262 "ll/llparser.mly"
    ( (u, Call (t, o, args)) )
# 240 "ll/llparser.ml"
                 in
                _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState156 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, (t : (Ll.ty))), _, (o : (Ll.operand))), _, (args : ((Ll.ty * Ll.operand) list))) = _menhir_stack in
                let _v : (Ll.uid * Ll.insn) = 
# 260 "ll/llparser.mly"
    ( (gensym "call", Call (t, o, args)) )
# 262 "ll/llparser.ml"
                 in
                _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce94 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Ll.ty * Ll.operand) list) = 
# 173 "ll/llparser.mly"
    ( [] )
# 285 "ll/llparser.ml"
     in
    _menhir_goto_ty_operand_list_rev _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_i_operand_list_rev : _menhir_env -> 'ttv_tail -> (Ll.operand list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I32 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | GID _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | INT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | NULL ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | UID _v ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115)
        | I64 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | GID _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | INT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | NULL ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | UID _v ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | BR | CALL | RET | STORE | UID _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (os : (Ll.operand list))) = _menhir_stack in
        let _v : (Ll.operand list) = 
# 197 "ll/llparser.mly"
    ( List.rev os )
# 346 "ll/llparser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (os : (Ll.operand list)) = _v in
        let (((((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 354 "ll/llparser.ml"
        ))), _, _), _), _, (t : (Ll.ty))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.uid * Ll.insn) = 
# 266 "ll/llparser.mly"
    ( (u, Gep (t,o,os)) )
# 359 "ll/llparser.ml"
         in
        _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_list_insn_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ll.uid * Ll.insn) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState182 | MenhirState71 | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (is : ((Ll.uid * Ll.insn) list)) = _v in
        let _v : ((Ll.uid * Ll.insn) list) = 
# 270 "ll/llparser.mly"
    ( is )
# 378 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | GID _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                | INT _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                | NULL ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                | UID _v ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167)
            | LABEL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | UID _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (l : (
# 63 "ll/llparser.mly"
       (string)
# 419 "ll/llparser.ml"
                    )) = _v in
                    let _v : (Ll.terminator) = 
# 205 "ll/llparser.mly"
    ( Br l )
# 424 "ll/llparser.ml"
                     in
                    _menhir_goto_terminator _menhir_env _menhir_stack _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | RET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState176 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Ll.uid * Ll.insn) list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ll.uid * Ll.insn))) = _menhir_stack in
        let _v : ((Ll.uid * Ll.insn) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 474 "ll/llparser.ml"
         in
        _menhir_goto_list_insn_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_cnd : _menhir_env -> 'ttv_tail -> (Ll.cnd) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_goto_bop : _menhir_env -> 'ttv_tail -> (Ll.bop) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140

and _menhir_goto_block_list_rev : _menhir_env -> 'ttv_tail -> ((Ll.lbl * Ll.block) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBL _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CALL ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState182
            | STORE ->
                _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState182
            | UID _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
            | BR | RET ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState182
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (bs : ((Ll.lbl * Ll.block) list))) = _menhir_stack in
        let _v : ((Ll.lbl * Ll.block) list) = 
# 221 "ll/llparser.mly"
    ( List.rev bs )
# 573 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _, (t : (Ll.ty))), _, (l : (
# 62 "ll/llparser.mly"
       (string)
# 587 "ll/llparser.ml"
            ))), _, (a : ((Ll.ty * Ll.uid) list))), _, (eb : (Ll.block))), (bs : ((Ll.lbl * Ll.block) list))) = _menhir_stack in
            let _v : (Ll.gid * Ll.fdecl) = 
# 96 "ll/llparser.mly"
    ( (l, { f_ty = (List.map fst a, t)
          ; f_param = List.map snd a
          ; f_cfg = (eb, bs)
          }
    ) )
# 596 "ll/llparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (f : (Ll.gid * Ll.fdecl)) = _v in
            let (_menhir_stack, (ds : (Ll.prog))) = _menhir_stack in
            let _v : (Ll.prog) = 
# 85 "ll/llparser.mly"
    ( { ds with fdecls = f :: ds.fdecls }  )
# 605 "ll/llparser.ml"
             in
            _menhir_goto_decls_rev _menhir_env _menhir_stack _v
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
        raise _eRR

and _menhir_goto_entry_block : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.block) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : ((Ll.lbl * Ll.block) list) = 
# 215 "ll/llparser.mly"
    ( [] )
# 628 "ll/llparser.ml"
     in
    _menhir_goto_block_list_rev _menhir_env _menhir_stack _v

and _menhir_goto_operand : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.operand) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 642 "ll/llparser.ml"
        ))), _, _), _), _, (t : (Ll.ty))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.uid * Ll.insn) = 
# 254 "ll/llparser.mly"
    ( (u, Load (t,o)) )
# 647 "ll/llparser.ml"
         in
        _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | GID _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | INT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | NULL ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | UID _v ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 684 "ll/llparser.ml"
        ))), (c : (Ll.cnd))), _, (t : (Ll.ty))), _, (o1 : (Ll.operand))), _, (o2 : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.uid * Ll.insn) = 
# 258 "ll/llparser.mly"
    ( (u, Icmp (c,t,o1,o2)) )
# 689 "ll/llparser.ml"
         in
        _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I32 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | GID _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | INT _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | NULL ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | UID _v ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
            | I64 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | GID _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
                | INT _v ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
                | NULL ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState107
                | UID _v ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
            | BR | CALL | COMMA | RET | STORE | UID _ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.operand list) = 
# 185 "ll/llparser.mly"
    ( [] )
# 741 "ll/llparser.ml"
                 in
                _menhir_goto_i_operand_list_rev _menhir_env _menhir_stack _v
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
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.operand list) = 
# 187 "ll/llparser.mly"
      ( [o] )
# 763 "ll/llparser.ml"
         in
        _menhir_goto_i_operand_list_rev _menhir_env _menhir_stack _v
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.operand list) = 
# 189 "ll/llparser.mly"
    ( [o] )
# 773 "ll/llparser.ml"
         in
        _menhir_goto_i_operand_list_rev _menhir_env _menhir_stack _v
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (os : (Ll.operand list))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.operand list) = 
# 191 "ll/llparser.mly"
    ( o::os )
# 783 "ll/llparser.ml"
         in
        _menhir_goto_i_operand_list_rev _menhir_env _menhir_stack _v
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (os : (Ll.operand list))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.operand list) = 
# 193 "ll/llparser.mly"
    ( o::os )
# 793 "ll/llparser.ml"
         in
        _menhir_goto_i_operand_list_rev _menhir_env _menhir_stack _v
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | COMMA | RPAREN ->
                _menhir_reduce94 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (tos : ((Ll.ty * Ll.operand) list))), _, (t : (Ll.ty))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.operand) list) = 
# 177 "ll/llparser.mly"
    ( (t,o)::tos )
# 839 "ll/llparser.ml"
         in
        _menhir_goto_ty_operand_list_rev _menhir_env _menhir_stack _menhir_s _v
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (t : (Ll.ty))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.operand) list) = 
# 175 "ll/llparser.mly"
    ( [(t,o)] )
# 849 "ll/llparser.ml"
         in
        _menhir_goto_ty_operand_list_rev _menhir_env _menhir_stack _menhir_s _v
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | GID _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | INT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | NULL ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | UID _v ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 920 "ll/llparser.ml"
        ))), (b : (Ll.bop))), _, (t : (Ll.ty))), _, (o1 : (Ll.operand))), _, (o2 : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.uid * Ll.insn) = 
# 250 "ll/llparser.mly"
    ( (u, Binop (b,t,o1,o2)) )
# 925 "ll/llparser.ml"
         in
        _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState149 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (t1 : (Ll.ty))), _, (o1 : (Ll.operand))), _, (t2 : (Ll.ty))), _, (o2 : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.uid * Ll.insn) = 
# 256 "ll/llparser.mly"
    ( (gensym "store", Store (t1,o1,o2)) )
# 969 "ll/llparser.ml"
         in
        _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | COMMA | RPAREN ->
                _menhir_reduce94 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _, (t : (Ll.ty))), _, (o : (Ll.operand))) = _menhir_stack in
        let _v : (Ll.terminator) = 
# 201 "ll/llparser.mly"
    ( Ret (t, Some o) )
# 1015 "ll/llparser.ml"
         in
        _menhir_goto_terminator _menhir_env _menhir_stack _v
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LABEL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | UID _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | COMMA ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | LABEL ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | UID _v ->
                                let _menhir_stack = Obj.magic _menhir_stack in
                                let _menhir_env = _menhir_discard _menhir_env in
                                let _menhir_stack = Obj.magic _menhir_stack in
                                let (l2 : (
# 63 "ll/llparser.mly"
       (string)
# 1056 "ll/llparser.ml"
                                )) = _v in
                                let ((_menhir_stack, _, (o : (Ll.operand))), (l1 : (
# 63 "ll/llparser.mly"
       (string)
# 1061 "ll/llparser.ml"
                                ))) = _menhir_stack in
                                let _v : (Ll.terminator) = 
# 207 "ll/llparser.mly"
    ( Cbr (o,l1,l2) )
# 1066 "ll/llparser.ml"
                                 in
                                _menhir_goto_terminator _menhir_env _menhir_stack _v
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
                            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Ll.uid * Ll.insn) list) = 
# 211 "<standard.mly>"
    ( [] )
# 1113 "ll/llparser.ml"
     in
    _menhir_goto_list_insn_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "ll/llparser.mly"
       (string)
# 1120 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 231 "ll/llparser.mly"
        ( Add )
# 1139 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | ALLOCA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137)
        | AND ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 236 "ll/llparser.mly"
        ( And )
# 1172 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | ASHR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 238 "ll/llparser.mly"
         ( Ashr )
# 1182 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | BITCAST ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130)
        | CALL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118)
        | GEP ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
        | ICMP ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.cnd) = 
# 241 "ll/llparser.mly"
       ( Eq )
# 1266 "ll/llparser.ml"
                 in
                _menhir_goto_cnd _menhir_env _menhir_stack _v
            | NE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.cnd) = 
# 242 "ll/llparser.mly"
       ( Ne )
# 1276 "ll/llparser.ml"
                 in
                _menhir_goto_cnd _menhir_env _menhir_stack _v
            | SGE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.cnd) = 
# 246 "ll/llparser.mly"
        ( Sge )
# 1286 "ll/llparser.ml"
                 in
                _menhir_goto_cnd _menhir_env _menhir_stack _v
            | SGT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.cnd) = 
# 245 "ll/llparser.mly"
        ( Sgt )
# 1296 "ll/llparser.ml"
                 in
                _menhir_goto_cnd _menhir_env _menhir_stack _v
            | SLE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.cnd) = 
# 244 "ll/llparser.mly"
        ( Sle )
# 1306 "ll/llparser.ml"
                 in
                _menhir_goto_cnd _menhir_env _menhir_stack _v
            | SLT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (Ll.cnd) = 
# 243 "ll/llparser.mly"
        ( Slt )
# 1316 "ll/llparser.ml"
                 in
                _menhir_goto_cnd _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LOAD ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
        | LSHR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 237 "ll/llparser.mly"
         ( Lshr )
# 1355 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | MUL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 233 "ll/llparser.mly"
        ( Mul )
# 1365 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | OR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 230 "ll/llparser.mly"
       ( Or )
# 1375 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | SHL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 234 "ll/llparser.mly"
        ( Shl )
# 1385 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | SUB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 232 "ll/llparser.mly"
        ( Sub )
# 1395 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
        | XOR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ll.bop) = 
# 235 "ll/llparser.mly"
        ( Xor )
# 1405 "ll/llparser.ml"
             in
            _menhir_goto_bop _menhir_env _menhir_stack _v
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run145 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145

and _menhir_run153 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153

and _menhir_goto_gdecl_list_rev : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ll.ty * Ll.ginit) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | RBRACE | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (gs : ((Ll.ty * Ll.ginit) list))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.ginit) list) = 
# 282 "ll/llparser.mly"
    ( List.rev gs )
# 1507 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState37 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (gs : ((Ll.ty * Ll.ginit) list))) = _menhir_stack in
                let _v : (Ll.ginit) = 
# 296 "ll/llparser.mly"
    ( GStruct gs )
# 1524 "ll/llparser.ml"
                 in
                _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState35 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (gs : ((Ll.ty * Ll.ginit) list))) = _menhir_stack in
                let _v : (Ll.ginit) = 
# 294 "ll/llparser.mly"
    ( GArray gs )
# 1546 "ll/llparser.ml"
                 in
                _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Ll.ty * Ll.ginit) list) = 
# 274 "ll/llparser.mly"
    ( [] )
# 1569 "ll/llparser.ml"
     in
    _menhir_goto_gdecl_list_rev _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_ty_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.ty list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ll.ty list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ll.ty))), _) = _menhir_stack in
        let _v : (Ll.ty list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1584 "ll/llparser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ty_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ll.ty list)) = _v in
        let _v : (Ll.ty list) = 
# 144 "<standard.mly>"
    ( x )
# 1594 "ll/llparser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ty__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_ty__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.ty list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _, (rt : (Ll.ty))), _, (g : (
# 62 "ll/llparser.mly"
       (string)
# 1614 "ll/llparser.ml"
        ))), _, (xs : (Ll.ty list))) = _menhir_stack in
        let _v : (Ll.gid * Ll.ty) = let ts = 
# 232 "<standard.mly>"
    ( xs )
# 1619 "ll/llparser.ml"
         in
        
# 112 "ll/llparser.mly"
    ( (g, Fun (ts,rt)) )
# 1624 "ll/llparser.ml"
         in
        _menhir_goto_edecl _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_terminator : _menhir_env -> 'ttv_tail -> (Ll.terminator) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (t : (Ll.terminator)) = _v in
    let (_menhir_stack, _menhir_s, (is : ((Ll.uid * Ll.insn) list))) = _menhir_stack in
    let _v : (Ll.block) = 
# 211 "ll/llparser.mly"
    ( { insns = is; term=(gensym "tmn", t) }  )
# 1643 "ll/llparser.ml"
     in
    match _menhir_s with
    | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (b : (Ll.block)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Ll.block) = 
# 225 "ll/llparser.mly"
    ( b )
# 1654 "ll/llparser.ml"
         in
        _menhir_goto_entry_block _menhir_env _menhir_stack _menhir_s _v
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (b : (Ll.block)) = _v in
        let ((_menhir_stack, (bs : ((Ll.lbl * Ll.block) list))), (l : (
# 61 "ll/llparser.mly"
       (string)
# 1664 "ll/llparser.ml"
        ))) = _menhir_stack in
        let _v : ((Ll.lbl * Ll.block) list) = 
# 217 "ll/llparser.mly"
    ( (l,b) :: bs )
# 1669 "ll/llparser.ml"
         in
        _menhir_goto_block_list_rev _menhir_env _menhir_stack _v
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (b : (Ll.block)) = _v in
        let _v : (Ll.block) = 
# 227 "ll/llparser.mly"
    ( b )
# 1679 "ll/llparser.ml"
         in
        _menhir_goto_entry_block _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_insn : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.uid * Ll.insn) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CALL ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | STORE ->
        _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | UID _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
    | BR | RET ->
        _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "ll/llparser.mly"
       (string)
# 1708 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (u : (
# 63 "ll/llparser.mly"
       (string)
# 1716 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.operand) = 
# 169 "ll/llparser.mly"
    ( Id u )
# 1721 "ll/llparser.ml"
     in
    _menhir_goto_operand _menhir_env _menhir_stack _menhir_s _v

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.operand) = 
# 163 "ll/llparser.mly"
    ( Null )
# 1732 "ll/llparser.ml"
     in
    _menhir_goto_operand _menhir_env _menhir_stack _menhir_s _v

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 60 "ll/llparser.mly"
       (int)
# 1739 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 60 "ll/llparser.mly"
       (int)
# 1747 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.operand) = 
# 165 "ll/llparser.mly"
    ( Const (Int64.of_int i) )
# 1752 "ll/llparser.ml"
     in
    _menhir_goto_operand _menhir_env _menhir_stack _menhir_s _v

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "ll/llparser.mly"
       (string)
# 1759 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (g : (
# 62 "ll/llparser.mly"
       (string)
# 1767 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.operand) = 
# 167 "ll/llparser.mly"
    ( Gid g )
# 1772 "ll/llparser.ml"
     in
    _menhir_goto_operand _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_arg_list_rev : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ll.ty * Ll.uid) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (a : ((Ll.ty * Ll.uid) list))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.uid) list) = 
# 159 "ll/llparser.mly"
    ( List.rev a )
# 1817 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CALL ->
                    _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | ENTRY ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState71 in
                    let _menhir_stack = (_menhir_stack, _menhir_s) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | COLON ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | CALL ->
                            _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState152
                        | STORE ->
                            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState152
                        | UID _v ->
                            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
                        | BR | RET ->
                            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState152
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (_menhir_stack, _menhir_s) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | STORE ->
                    _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | UID _v ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
                | BR | RET ->
                    _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
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
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_edecl : _menhir_env -> 'ttv_tail -> (Ll.gid * Ll.ty) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (e : (Ll.gid * Ll.ty)) = _v in
    let (_menhir_stack, (ds : (Ll.prog))) = _menhir_stack in
    let _v : (Ll.prog) = 
# 91 "ll/llparser.mly"
    ( { ds with edecls = e :: ds.edecls }  )
# 1904 "ll/llparser.ml"
     in
    _menhir_goto_decls_rev _menhir_env _menhir_stack _v

and _menhir_goto_ginit : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.ginit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (gs : ((Ll.ty * Ll.ginit) list))), _, (t : (Ll.ty))), _, (g : (Ll.ginit))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.ginit) list) = 
# 278 "ll/llparser.mly"
    ( (t,g)::gs )
# 1953 "ll/llparser.ml"
         in
        _menhir_goto_gdecl_list_rev _menhir_env _menhir_stack _menhir_s _v
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (t : (Ll.ty))), _, (g : (Ll.ginit))) = _menhir_stack in
        let _v : ((Ll.ty * Ll.ginit) list) = 
# 276 "ll/llparser.mly"
    ( [(t,g)] )
# 1963 "ll/llparser.ml"
         in
        _menhir_goto_gdecl_list_rev _menhir_env _menhir_stack _menhir_s _v
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, (g : (
# 62 "ll/llparser.mly"
       (string)
# 1972 "ll/llparser.ml"
        ))), _, (t : (Ll.ty))), _, (gi : (Ll.ginit))) = _menhir_stack in
        let _v : (Ll.gid * Ll.gdecl) = 
# 104 "ll/llparser.mly"
    ( (g, (t,gi)) )
# 1977 "ll/llparser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (g : (Ll.gid * Ll.gdecl)) = _v in
        let (_menhir_stack, (ds : (Ll.prog))) = _menhir_stack in
        let _v : (Ll.prog) = 
# 87 "ll/llparser.mly"
    ( { ds with gdecls = g :: ds.gdecls }  )
# 1986 "ll/llparser.ml"
         in
        _menhir_goto_decls_rev _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 64 "ll/llparser.mly"
       (string)
# 1995 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (s : (
# 64 "ll/llparser.mly"
       (string)
# 2003 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.ginit) = 
# 292 "ll/llparser.mly"
    ( GString s )
# 2008 "ll/llparser.ml"
     in
    _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.ginit) = 
# 286 "ll/llparser.mly"
    ( GNull )
# 2019 "ll/llparser.ml"
     in
    _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | COMMA | RBRACKET ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | COMMA | RBRACE ->
        _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 60 "ll/llparser.mly"
       (int)
# 2080 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 60 "ll/llparser.mly"
       (int)
# 2088 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.ginit) = 
# 290 "ll/llparser.mly"
    ( GInt (Int64.of_int i) )
# 2093 "ll/llparser.ml"
     in
    _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "ll/llparser.mly"
       (string)
# 2100 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (g : (
# 62 "ll/llparser.mly"
       (string)
# 2108 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.ginit) = 
# 288 "ll/llparser.mly"
    ( GGid g )
# 2113 "ll/llparser.ml"
     in
    _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_ty_list_rev : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.ty list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | RBRACE | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (ts : (Ll.ty list))) = _menhir_stack in
        let _v : (Ll.ty list) = 
# 144 "ll/llparser.mly"
    ( List.rev ts )
# 2189 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState19 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (rt : (Ll.ty))), _), _, (ts : (Ll.ty list))) = _menhir_stack in
                let _v : (Ll.ty) = 
# 126 "ll/llparser.mly"
    ( Fun (ts, rt) )
# 2206 "ll/llparser.ml"
                 in
                _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState11 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (ts : (Ll.ty list))) = _menhir_stack in
                let _v : (Ll.ty) = 
# 122 "ll/llparser.mly"
    ( Struct ts )
# 2228 "ll/llparser.ml"
                 in
                _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * (Ll.ty) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (t : (Ll.ty))) = _menhir_stack in
    let _v : (Ll.ty) = 
# 132 "ll/llparser.mly"
    ( Ptr t )
# 2254 "ll/llparser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * (Ll.ty) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.ty) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | COMMA | RBRACE | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (ts : (Ll.ty list))), _, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.ty list) = 
# 140 "ll/llparser.mly"
    ( t::ts )
# 2302 "ll/llparser.ml"
             in
            _menhir_goto_ty_list_rev _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
    | MenhirState11 | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | COMMA | RBRACE | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.ty list) = 
# 138 "ll/llparser.mly"
    ( [t] )
# 2324 "ll/llparser.ml"
             in
            _menhir_goto_ty_list_rev _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState26 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (i : (
# 60 "ll/llparser.mly"
       (int)
# 2346 "ll/llparser.ml"
            ))), _, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.ty) = 
# 124 "ll/llparser.mly"
    ( Array (i,t) )
# 2351 "ll/llparser.ml"
             in
            _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DECLARE | DEFINE | EOF | GID _ | UID _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, (tid : (
# 63 "ll/llparser.mly"
       (string)
# 2374 "ll/llparser.ml"
            ))), _, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.tid * Ll.ty) = 
# 108 "ll/llparser.mly"
    ( (tid, t) )
# 2379 "ll/llparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (t : (Ll.tid * Ll.ty)) = _v in
            let (_menhir_stack, (ds : (Ll.prog))) = _menhir_stack in
            let _v : (Ll.prog) = 
# 89 "ll/llparser.mly"
    ( { ds with tdecls = t :: ds.tdecls }  )
# 2388 "ll/llparser.ml"
             in
            _menhir_goto_decls_rev _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BITCAST ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | GID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LBRACKET ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NULL ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | STRING _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | MenhirState37 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BITCAST ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LBRACKET ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NULL ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STRING _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BITCAST ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | GID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LBRACKET ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NULL ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | STRING _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BITCAST ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | GID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | LBRACE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LBRACKET ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NULL ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | STRING _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState48 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (t1 : (Ll.ty))), _, (g : (Ll.ginit))), _, (t2 : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.ginit) = 
# 298 "ll/llparser.mly"
    ( GBitcast (t1, g, t2) )
# 2519 "ll/llparser.ml"
             in
            _menhir_goto_ginit _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | DECLARE | DEFINE | EOF | GID _ | UID _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, (g : (
# 62 "ll/llparser.mly"
       (string)
# 2542 "ll/llparser.ml"
            ))), _, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.gid * Ll.ty) = 
# 114 "ll/llparser.mly"
    ( (g, t) )
# 2547 "ll/llparser.ml"
             in
            _menhir_goto_edecl _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState61 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | I1 ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | I64 ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | I8 ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | LBRACE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | LBRACKET ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | UID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                | VOID ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | COMMA | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState63 in
                    let _v : ((Ll.ty * Ll.uid) list) = 
# 151 "ll/llparser.mly"
    ( [] )
# 2591 "ll/llparser.ml"
                     in
                    _menhir_goto_arg_list_rev _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | MenhirState67 | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | UID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState64 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (u : (
# 63 "ll/llparser.mly"
       (string)
# 2629 "ll/llparser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.ty * Ll.uid) = 
# 147 "ll/llparser.mly"
               ( (t,u) )
# 2635 "ll/llparser.ml"
             in
            (match _menhir_s with
            | MenhirState67 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (a : (Ll.ty * Ll.uid)) = _v in
                let (_menhir_stack, _menhir_s, (args : ((Ll.ty * Ll.uid) list))) = _menhir_stack in
                let _v : ((Ll.ty * Ll.uid) list) = 
# 155 "ll/llparser.mly"
    ( a::args )
# 2646 "ll/llparser.ml"
                 in
                _menhir_goto_arg_list_rev _menhir_env _menhir_stack _menhir_s _v
            | MenhirState63 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (a : (Ll.ty * Ll.uid)) = _v in
                let _v : ((Ll.ty * Ll.uid) list) = 
# 153 "ll/llparser.mly"
    ( [a] )
# 2656 "ll/llparser.ml"
                 in
                _menhir_goto_arg_list_rev _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState81 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState102 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
    | MenhirState156 | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128)
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | BR | CALL | RET | STORE | UID _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 2902 "ll/llparser.ml"
            ))), _, (t1 : (Ll.ty))), _, (o : (Ll.operand))), _, (t2 : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.uid * Ll.insn) = 
# 264 "ll/llparser.mly"
    ( (u, Bitcast (t1,o,t2)) )
# 2907 "ll/llparser.ml"
             in
            _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134)
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | BR | CALL | RET | STORE | UID _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (u : (
# 63 "ll/llparser.mly"
       (string)
# 2928 "ll/llparser.ml"
            ))), _, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.uid * Ll.insn) = 
# 252 "ll/llparser.mly"
    ( (u, Alloca t) )
# 2933 "ll/llparser.ml"
             in
            _menhir_goto_insn _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138)
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146)
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149)
    | MenhirState153 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154)
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | INT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | NULL ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | UID _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | LBL _ | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (t : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.terminator) = 
# 203 "ll/llparser.mly"
    ( Ret (t, None) )
# 3047 "ll/llparser.ml"
             in
            _menhir_goto_terminator _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162)
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | GID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState189 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | I1 ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState191
                | I64 ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState191
                | I8 ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState191
                | LBRACE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState191
                | LBRACKET ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState191
                | UID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
                | VOID ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState191
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState191 in
                    let _v : (Ll.ty list) = 
# 142 "<standard.mly>"
    ( [] )
# 3091 "ll/llparser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_ty__ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState189
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189)
    | MenhirState193 | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState192 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193)
        | LPAREN ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | STAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ll.ty))) = _menhir_stack in
            let _v : (Ll.ty list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3152 "ll/llparser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_ty_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonptr_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ll.ty) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (t : (Ll.ty)) = _v in
    let _v : (Ll.ty) = 
# 134 "ll/llparser.mly"
    ( t )
# 3170 "ll/llparser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState192 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState189 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState176 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState153 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState149 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.ty) = 
# 117 "ll/llparser.mly"
         ( Void )
# 3477 "ll/llparser.ml"
     in
    _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 63 "ll/llparser.mly"
       (string)
# 3484 "ll/llparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (t : (
# 63 "ll/llparser.mly"
       (string)
# 3492 "ll/llparser.ml"
    )) = _v in
    let _v : (Ll.ty) = 
# 128 "ll/llparser.mly"
    ( Namedt t )
# 3497 "ll/llparser.ml"
     in
    _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CROSS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | I1 ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | I64 ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | I8 ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LBRACE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | LBRACKET ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | UID _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | VOID ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | I1 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | I64 ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | I8 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LBRACE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LBRACKET ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | UID _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | VOID ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.ty) = 
# 119 "ll/llparser.mly"
       ( I8 )
# 3581 "ll/llparser.ml"
     in
    _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.ty) = 
# 120 "ll/llparser.mly"
        ( I64 )
# 3592 "ll/llparser.ml"
     in
    _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.ty) = 
# 118 "ll/llparser.mly"
       ( I1 )
# 3603 "ll/llparser.ml"
     in
    _menhir_goto_nonptr_ty _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_decls_rev : _menhir_env -> 'ttv_tail -> (Ll.prog) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DECLARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188)
    | DEFINE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | I1 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | I64 ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | I8 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LBRACE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LBRACKET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | UID _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | VOID ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
    | GID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EXTERNAL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | GLOBAL ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | I1 ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                    | I64 ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                    | I8 ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                    | LBRACE ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                    | LBRACKET ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                    | UID _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
                    | VOID ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | GLOBAL ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | I1 ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31
                | I64 ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
                | I8 ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
                | LBRACE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
                | LBRACKET ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
                | UID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
                | VOID ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | UID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | TYPE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | I1 ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | I64 ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | I8 ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | LBRACE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | LBRACKET ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | UID _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
                | VOID ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (ds : (Ll.prog))) = _menhir_stack in
        let _v : (Ll.prog) = 
# 75 "ll/llparser.mly"
    ( { tdecls = List.rev ds.tdecls
      ; gdecls = List.rev ds.gdecls
      ; fdecls = List.rev ds.fdecls
      ; edecls = List.rev ds.edecls
    } )
# 3791 "ll/llparser.ml"
         in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, (ds : (Ll.prog))) = _menhir_stack in
            let _v : (Ll.prog) = 
# 71 "ll/llparser.mly"
    ( ds )
# 3805 "ll/llparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ll.prog)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

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

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ll.prog) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ll.prog) = 
# 83 "ll/llparser.mly"
    ( { tdecls = [] ; gdecls = [] ; fdecls = [] ; edecls = [] } )
# 3848 "ll/llparser.ml"
     in
    _menhir_goto_decls_rev _menhir_env _menhir_stack _v)

# 269 "<standard.mly>"
  

# 3855 "ll/llparser.ml"
