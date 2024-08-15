  open Rtlil_input
let getstr = function
| ACCEPT  -> "ACCEPT"
| AMPERSAND  -> "AMPERSAND"
| AT  -> "AT"
| BACKQUOTE  -> "BACKQUOTE"
| BACKSLASH  -> "BACKSLASH"
| CARET  -> "CARET"
| COLON  -> "COLON"
| COMMA  -> "COMMA"
| CONS1  _ -> "CONS1"
| CONS2  _ -> "CONS2"
| CONS3  _ -> "CONS3"
| CONS4  _ -> "CONS4"
| CONS5  _ -> "CONS5"
| CONS6  _ -> "CONS6"
| CONS7  _ -> "CONS7"
| CONS8  _ -> "CONS8"
| CONS9  _ -> "CONS9"
| DEFAULT  -> "DEFAULT"
| DOLLAR  -> "DOLLAR"
| DOT  -> "DOT"
| DOUBLEQUOTE  -> "DOUBLEQUOTE"
| ELIST  _ -> "ELIST"
| EMPTY_TOKEN  -> "EMPTY_TOKEN"
| END  -> "END"
| EOF_TOKEN  -> "EOF_TOKEN"
| ERROR_TOKEN  -> "ERROR_TOKEN"
| Error  -> "Error"
| GREATER  -> "GREATER"
| HASH  -> "HASH"
| LBRACE  -> "LBRACE"
| LBRACK  -> "LBRACK"
| LESS  -> "LESS"
| LINEFEED  -> "LINEFEED"
| PERCENT  -> "PERCENT"
| PLING  -> "PLING"
| QUERY  -> "QUERY"
| QUOTE  -> "QUOTE"
| RBRACE  -> "RBRACE"
| RBRACK  -> "RBRACK"
| SLIST  _ -> "SLIST"
| STRING  _ -> "STRING"
| TILDE  -> "TILDE"
| TLIST  _ -> "TLIST"
| TOK_ALWAYS  -> "TOK_ALWAYS"
| TOK_ASSIGN  -> "TOK_ASSIGN"
| TOK_ATTRIBUTE  -> "TOK_ATTRIBUTE"
| TOK_AUTOIDX  -> "TOK_AUTOIDX"
| TOK_CASE  -> "TOK_CASE"
| TOK_CELL  -> "TOK_CELL"
| TOK_CONNECT  -> "TOK_CONNECT"
| TOK_EDGE  -> "TOK_EDGE"
| TOK_END  -> "TOK_END"
| TOK_EOL  -> "TOK_EOL"
| TOK_GLOBAL  -> "TOK_GLOBAL"
| TOK_HIGH  -> "TOK_HIGH"
| TOK_ID  _ -> "TOK_ID"
| TOK_INIT  -> "TOK_INIT"
| TOK_INOUT  -> "TOK_INOUT"
| TOK_INPUT  -> "TOK_INPUT"
| TOK_INT  _ -> "TOK_INT"
| TOK_INVALID  -> "TOK_INVALID"
| TOK_LOW  -> "TOK_LOW"
| TOK_MEMORY  -> "TOK_MEMORY"
| TOK_MEMWR  -> "TOK_MEMWR"
| TOK_MODULE  -> "TOK_MODULE"
| TOK_NEGEDGE  -> "TOK_NEGEDGE"
| TOK_OFFSET  -> "TOK_OFFSET"
| TOK_OUTPUT  -> "TOK_OUTPUT"
| TOK_PARAMETER  -> "TOK_PARAMETER"
| TOK_POSEDGE  -> "TOK_POSEDGE"
| TOK_PROCESS  -> "TOK_PROCESS"
| TOK_REAL  -> "TOK_REAL"
| TOK_SIGNED  -> "TOK_SIGNED"
| TOK_SIZE  -> "TOK_SIZE"
| TOK_STRING  _ -> "TOK_STRING"
| TOK_SWITCH  -> "TOK_SWITCH"
| TOK_SYNC  -> "TOK_SYNC"
| TOK_UPDATE  -> "TOK_UPDATE"
| TOK_UPTO  -> "TOK_UPTO"
| TOK_VALUE  _ -> "TOK_VALUE"
| TOK_WIDTH  -> "TOK_WIDTH"
| TOK_WIRE  -> "TOK_WIRE"
| TUPLE10  _ -> "TUPLE10"
| TUPLE2  _ -> "TUPLE2"
| TUPLE3  _ -> "TUPLE3"
| TUPLE4  _ -> "TUPLE4"
| TUPLE5  _ -> "TUPLE5"
| TUPLE6  _ -> "TUPLE6"
| TUPLE7  _ -> "TUPLE7"
| TUPLE8  _ -> "TUPLE8"
| TUPLE9  _ -> "TUPLE9"
| UNDERSCORE  -> "UNDERSCORE"
| VBAR  -> "VBAR"

let (typehash:(string,unit)Hashtbl.t) = Hashtbl.create 257

let (packhash:(string,unit)Hashtbl.t) = Hashtbl.create 257
