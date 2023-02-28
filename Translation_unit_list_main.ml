open Translation_unit_list
open Translation_unit_list_types
open Translation_unit_list_lex
(*
open Translation_unit_list_transform
*)

let verbose = ref true

let parse_output_ast_from_chan ch =
  let lb = Lexing.from_channel ch in
  let output = try
      ml_start token lb
  with
    | Parsing.Parse_error ->
      let n = Lexing.lexeme_start lb in
      failwith (Printf.sprintf "Output.parse: parse error at character %d" n);
  in
  output

let parse arg =
  Hashtbl.clear typehash;
  Hashtbl.add typehash "__builtin_va_list" ();
  let ch = open_in arg in
  let rslt = parse_output_ast_from_chan ch in
  close_in ch;
  rslt

let _ = if Array.length Sys.argv > 1 then
    begin
      let main = try Sys.getenv "TRANS_MAIN" with _ -> "main" in 
(*
      let needed = dump parse stdout main Sys.argv in
      let chan = open_out "mykernel.c" in
      Translation_unit_list_foreign.dump parse chan needed;
      close_out chan;
 *)
      ()
    end
