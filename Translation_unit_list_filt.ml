open Translation_unit_list
open Translation_unit_list_types

let rec dumptree = function
| CONS1(a) -> "CONS1 ("^dumptree a^")"
| CONS2(a,b) -> "CONS2 ("^dumptree a^", "^dumptree b^")"
| CONS3(a,b,c) -> "CONS3 ("^dumptree a^", "^dumptree b^", "^dumptree c^")"
| CONS4(a,b,c,d) -> "CONS4 ("^dumptree a^", "^dumptree b^", "^dumptree c^")"
| TUPLE2(a,b) -> "TUPLE2 ("^dumptree a^", "^dumptree b^")"
| TUPLE3(a,b,c) -> "TUPLE3 ("^dumptree a^", "^dumptree b^", "^dumptree c^")"
| TUPLE4(a,b,c,d) -> "TUPLE4 ("^dumptree a^", "^dumptree b^", "^dumptree c^", "^dumptree d^")"
| TUPLE5(a,b,c,d,e) -> "TUPLE5 ("^dumptree a^", "^dumptree b^", "^dumptree c^", "^dumptree d^", "^dumptree e^")"
| TUPLE6(a,b,c,d,e,f) -> "TUPLE6 ("^dumptree a^", "^dumptree b^", "^dumptree c^", "^dumptree d^", "^dumptree e^", "^dumptree f^")"
| TUPLE7(a,b,c,d,e,f,g) -> "TUPLE7 ("^dumptree a^", "^dumptree b^", "^dumptree c^", "^dumptree d^", "^dumptree e^", "^dumptree f^", "^dumptree g^")"

| TYPE_NAME str -> "TYPE_NAME \""^str^"\""
| IDENTIFIER str -> "IDENTIFIER \""^str^"\""
| CONSTANT num -> "CONSTANT \""^num^"\""
| TLIST lst -> "TLIST ["^String.concat "; " (List.map dumptree lst)^"]"
| oth -> "other"

let failtree oth = print_endline "failtree:"; failwith (dumptree oth)

let loc = ref 0
let othext = ref []
let unhandled = ref EOF_TOKEN

let pcnv = function
| TLIST p -> p
| VOID -> []
| oth -> [oth]

let filt _enums _externs _fbody _ftypes _globals _inits _inlines _structs _typedefs _unions _others = function
| TUPLE3 (typ, TUPLE4 (STRING "init_declarator90",
          (TUPLE5
           (STRING "direct_declarator148", IDENTIFIER array, LBRACK,
            CONSTANT len, RBRACK) as shape),
          EQUALS,
          TUPLE5 (STRING "initializer190", LBRACE, init, COMMA, RBRACE)),
        SEMICOLON) -> _globals array (TUPLE3 (typ, shape, init))
| TUPLE2
  (TUPLE5 (UNION, IDENTIFIER uid, LBRACE, TLIST ulst, RBRACE), SEMICOLON) -> loc := 20; _unions uid ulst
| TUPLE3
 (TUPLE2 (INLINE, TUPLE2 (STATIC, typ)),
  TUPLE4 (IDENTIFIER fn, LPAREN, params, RPAREN),
  SEMICOLON) -> loc := 1; _ftypes fn (typ, pcnv params)
| TUPLE3 (TUPLE2 (INLINE, TUPLE2 (STATIC, typ)),
    TUPLE2 (STAR, TUPLE4 (IDENTIFIER fn, LPAREN, params, RPAREN)),
    TUPLE3 (LBRACE, body, RBRACE)) -> loc := 24; _inlines fn (TUPLE2(typ,STAR), pcnv params, pcnv body)
| TUPLE3
  (TUPLE2 (STATIC, TUPLE2 (INLINE, typ)),
   TUPLE4
    (IDENTIFIER fn, LPAREN,
     params,
     RPAREN),
   TUPLE3
    (LBRACE, body, RBRACE)) -> loc := 4; _inlines fn (typ, pcnv params, pcnv body)
| TUPLE3
  (TUPLE2 (INLINE, typ),
   TUPLE4
    (IDENTIFIER fn, LPAREN,
     params,
     RPAREN),
   TUPLE3
    (LBRACE, body, RBRACE)) -> loc := 21; _inlines fn (typ,pcnv params, pcnv body)
| TUPLE3
    (typ,
     TUPLE2
      (STAR,
       TUPLE4
        (IDENTIFIER fn, LPAREN,
         params,
         RPAREN)),
     TUPLE3 (LBRACE, body, RBRACE)) -> loc := 2; _fbody fn (TUPLE2(typ,STAR),pcnv params,pcnv body)
| TUPLE4 (STRING "function_definition236", typ,
   TUPLE5 (STRING "direct_declarator154", IDENTIFIER fn, LPAREN,
     params,
     RPAREN),
   TUPLE4(STRING "compound_statement210", LBRACE,
       stmts, RBRACE)) -> loc := 3; _fbody fn (typ, pcnv params, pcnv stmts)
| TUPLE3
  (TUPLE2 (EXTERN, typ),
    TUPLE2(STAR, 
     TUPLE4
      (IDENTIFIER fn, LPAREN,
       params,
     RPAREN)),
   SEMICOLON) -> loc := 5; _ftypes fn (TUPLE2(typ,STAR), pcnv params)
| TUPLE3
  (TUPLE2 (EXTERN, typ),
   (TUPLE2
    (TUPLE2 (STAR, CONST), TUPLE3 (IDENTIFIER fn, LBRACK, RBRACK)) as params),
   SEMICOLON) -> loc := 6; _ftypes fn (TUPLE2(typ,STAR), pcnv params)
| TUPLE2
  (TUPLE5
    (STRUCT, IDENTIFIER sid, LBRACE,
     params,
     RBRACE),
   SEMICOLON) -> loc := 7; _structs sid (pcnv params)
| TUPLE2
  (TUPLE4
    (ENUM, LBRACE,
     enumerations,
     RBRACE),
   SEMICOLON) -> loc := 8; _enums ("__enum__anon__"^string_of_int (Hashtbl.hash enumerations)) enumerations
| TUPLE3
  (TUPLE2
    (TYPEDEF,
     TUPLE4
      (ENUM, LBRACE,
       enumerations,
       RBRACE)),
   IDENTIFIER id_t, SEMICOLON) -> loc := 9; _enums id_t enumerations
| TUPLE3
  (TUPLE2 (TYPEDEF, typ),
   TUPLE4
    (TUPLE3 (LPAREN, TUPLE2 (STAR, IDENTIFIER fn_t), RPAREN),
     LPAREN,
     params,
     RPAREN),
   SEMICOLON) -> loc := 10; _ftypes fn_t (typ, pcnv params)
| TUPLE2
  (TUPLE5
    (ENUM, IDENTIFIER enum_id, LBRACE,
     enumerations,
     RBRACE),
   SEMICOLON) -> loc := 11; _enums enum_id (enumerations)
| TUPLE3
  (TUPLE2
    (TYPEDEF,
     (TUPLE5
      (STRUCT, IDENTIFIER sid, LBRACE,
       items,
       RBRACE) as typ)),
   TUPLE2 (STAR, IDENTIFIER id_t), SEMICOLON) -> loc := 12;
    _structs sid (pcnv items);
    _typedefs id_t typ
| TUPLE2 (TUPLE2 (STRUCT, IDENTIFIER struct_id), SEMICOLON) -> loc := 13; _structs struct_id []
| TUPLE3
  (TUPLE2 (EXTERN, TUPLE2 (STRUCT, _)) as item,
   TUPLE2 (STAR, IDENTIFIER nam), SEMICOLON) -> 
    loc := 14; _globals nam (TUPLE2(item,STAR))
| TUPLE3
  (TUPLE2 (TYPEDEF, typedef),
   IDENTIFIER id_t, SEMICOLON) -> loc := 15; _typedefs id_t typedef
| TUPLE3
  (TUPLE2 (TYPEDEF, typedef),
   TUPLE2 (STAR, IDENTIFIER id_t), SEMICOLON) -> loc := 16; _typedefs id_t (TUPLE2(typedef,STAR))
| TUPLE3 (TUPLE2 (EXTERN, typ), IDENTIFIER nam, SEMICOLON) -> loc := 17; _externs nam typ
| TUPLE3 (TUPLE2 (EXTERN, typ), TUPLE2(STAR, IDENTIFIER nam), SEMICOLON) ->
   loc := 18; _externs nam (TUPLE2(typ,STAR))
| TUPLE3 (TUPLE2 (EXTERN, typ), TLIST tlst, SEMICOLON) -> List.iter (function
    | TUPLE2(STAR, IDENTIFIER id) -> loc := 19; _externs id (TUPLE2(typ,STAR))
    | IDENTIFIER id -> loc := 38; _externs id typ
    | TUPLE4 (IDENTIFIER id, LBRACK, IDENTIFIER id', RBRACK) -> loc := 39; _externs id (TUPLE2(typ,IDENTIFIER id'))
    | oth -> othext := oth :: !othext) tlst
| TUPLE3
  (typ,
   TUPLE4
    (IDENTIFIER fn, LPAREN,
     params,
     RPAREN),
   TUPLE3
    (LBRACE, body, RBRACE)) -> loc := 21; _fbody fn (typ,pcnv params, pcnv body)
| TUPLE3(typ,
   TUPLE2(STAR,
     TUPLE4
      (IDENTIFIER fn, LPAREN,
       params,
       RPAREN)),
   SEMICOLON) -> loc := 22; _ftypes fn (TUPLE2(typ,STAR), pcnv params)
| TUPLE3 (typ,
     TUPLE4
      (TUPLE3
        (LPAREN,
         TUPLE2
          (STAR,
           TUPLE4
            (IDENTIFIER fn, LPAREN,
             params,
             RPAREN)),
         RPAREN),
       LPAREN, INT, RPAREN),
     SEMICOLON) -> loc := 23; _ftypes fn (TUPLE2(typ,STAR), pcnv params)
| TUPLE3 (TYPE_NAME id_t as t, IDENTIFIER data, SEMICOLON) -> loc := 25; _globals data t
| TUPLE3 (typ,
     TUPLE4
      (STRING "init_declarator90",
       TUPLE5 (STRING "direct_declarator148", IDENTIFIER data, LBRACK, CONSTANT siz, RBRACK),
       EQUALS,
       TUPLE5
        (STRING "initializer190", LBRACE,
         (CONSTANT _ |TLIST _ as contents),
         COMMA, RBRACE)),
     SEMICOLON) -> _inits data (typ,contents)
| TUPLE3 (typ,
     TUPLE4
      (STRING "init_declarator90",
       TUPLE5 (STRING "direct_declarator148", IDENTIFIER data, LBRACK, CONSTANT siz, RBRACK),
       EQUALS,
       (STRING_LITERAL _ as contents)),
     SEMICOLON) -> _inits data (typ,contents)
| TUPLE3 (typ,
   TUPLE5 (STRING "direct_declarator154", IDENTIFIER data, LPAREN, siz, RPAREN),
   SEMICOLON) -> _globals data siz
| TUPLE3
  (TUPLE3 (STRING "declaration_specifiers80", EXTERN, VOID),
   TUPLE3 (STRING "declarator142", STAR,
     TUPLE5 (STRING "direct_declarator154", IDENTIFIER data, LPAREN, TLIST lst, RPAREN)),
   SEMICOLON) -> _externs data (TLIST lst)
| TUPLE3 (typ,
   TUPLE5 (STRING "direct_declarator148", IDENTIFIER array, LBRACK, (CONSTANT _ as siz), RBRACK), SEMICOLON) ->
   _globals array (TUPLE2(typ,  TUPLE4 (IDENTIFIER array, LBRACK, siz, RBRACK)))
| TUPLE3 (TUPLE2 (STATIC, TUPLE2 (CONST, typ)), TUPLE3 (IDENTIFIER data, EQUALS, (CONSTANT _ as num)), SEMICOLON) ->
    loc := 26; _inits data (typ,num)
| TUPLE3 (typ, TUPLE3 (IDENTIFIER data, EQUALS, TUPLE3(LBRACE, (TLIST _ as contents), RBRACE)), SEMICOLON) ->
    loc := 27; _inits data (typ,contents)
| TUPLE3 (typ, TUPLE3 (IDENTIFIER data, EQUALS, TUPLE4(LBRACE, (TLIST _ as contents), COMMA, RBRACE)), SEMICOLON) ->
    loc := 28; _inits data (typ,contents)
| TUPLE3 (TUPLE2 (STATIC, typ), TUPLE2 (STAR, IDENTIFIER data), SEMICOLON) ->
    loc := 29; _globals data (TUPLE2(typ,STAR))
| TUPLE3 (TUPLE2 (TYPEDEF, typedef), TUPLE4 (IDENTIFIER id_t, LBRACK, CONSTANT width, RBRACK), SEMICOLON) ->
    loc := 31; _typedefs id_t typedef
| TUPLE3 (typ, TUPLE3 (IDENTIFIER fn, LPAREN, RPAREN), TUPLE3 (LBRACE, body, RBRACE)) ->
    loc := 32; _fbody fn (typ,[],pcnv body)
| TUPLE3 (TUPLE2 (STATIC, typ), TUPLE3 (TUPLE2 (STAR, IDENTIFIER ptr), EQUALS, contents), SEMICOLON) ->
    loc := 33; _inits ptr (TUPLE2(typ,STAR),contents)
| TUPLE3 (TUPLE2 (STATIC, typ), TUPLE3 (IDENTIFIER data, EQUALS, contents), SEMICOLON) ->
    loc := 34; _inits data (typ,contents)
| TUPLE3 (TUPLE2 (STATIC, typ), TUPLE4 (IDENTIFIER array, LBRACK, constexpr, RBRACK), SEMICOLON) ->
    loc := 35; _globals array (TUPLE2 (typ, TUPLE4 (IDENTIFIER array, LBRACK, constexpr, RBRACK)))
| TUPLE3 (TUPLE2 (STATIC, typ), IDENTIFIER data, SEMICOLON) ->
    loc := 36; _globals data typ
| TUPLE2 (TUPLE2 (TYPEDEF, TUPLE2 (TYPE_NAME "__gnuc_va_list" as typ, TYPE_NAME "va_list")), SEMICOLON) ->
   loc := 37; _typedefs "va_list" typ
| TUPLE3 (typ, TUPLE3 (IDENTIFIER fn, LPAREN, RPAREN), SEMICOLON) ->
   loc := 40; _ftypes fn (typ, [])
| TUPLE3 (TUPLE2 (EXTERN, typ), TUPLE4 (IDENTIFIER fn, LBRACK, id, RBRACK), SEMICOLON) ->
   loc := 41; _ftypes fn (typ, pcnv id)
| TUPLE3 (TUPLE2 (EXTERN, typ), TUPLE2 ((TUPLE2 (STAR, STAR) as typ'), IDENTIFIER nam), SEMICOLON) ->
   loc := 42; _externs nam (TUPLE2(typ,typ'))
| TUPLE3 (TUPLE2 (STATIC, (TUPLE2 (CONST, DOUBLE) as typ)),
	  TUPLE3 (TUPLE3 (IDENTIFIER array, LBRACK, RBRACK), EQUALS,
		  TUPLE4 (LBRACE, TLIST lst, COMMA, RBRACE)), SEMICOLON) ->
   loc := 43; _globals array (TUPLE3 (typ, TUPLE3 (IDENTIFIER array, LBRACK, RBRACK), TLIST lst))
| TUPLE3 (typ, (TUPLE3 (TUPLE4 (IDENTIFIER array, LBRACK, CONSTANT len, RBRACK), EQUALS, _) as shape), SEMICOLON) ->
   loc := 44; _globals array (TUPLE2 (typ, shape))
| TUPLE3 (typ, (TUPLE3 (IDENTIFIER id, EQUALS, _) as shape), SEMICOLON) ->
   loc := 45; _globals id (TUPLE2 (typ, shape))
| TUPLE3 (typ, (TLIST (IDENTIFIER id :: tl) as shape), SEMICOLON) ->
   loc := 46; _globals id (TUPLE2 (typ, shape))
| TUPLE3 (typ, IDENTIFIER id, SEMICOLON) ->
   loc := 47; _globals id (TUPLE2 (typ, IDENTIFIER id))
| TUPLE3 (typ, (TUPLE4 (IDENTIFIER array, LBRACK, len, RBRACK) as shape), SEMICOLON) ->
   loc := 48; _globals array (TUPLE2 (typ, shape))
| oth -> unhandled := oth; failwith "filt"
