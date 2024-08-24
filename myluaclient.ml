
let saved_args = ref []

type libcell = string *
          ((string * string) list *
           (string * Rtl_parser.token * File_rewrite.liberty) list)

type luaitm =
| Cnvlst of string * Input_types.itms
| Rtlil of string * Rtlil_input_rewrite_types.ilang list
| Lib of string * libcell list
| Rtl of string * string
| Sat of Source_text_rewrite_types.ind

let lhash = Hashtbl.create 257

let nxtitm' =
  let itm = ref 0 in fun () -> incr itm; "itm"^string_of_int !itm
  
let find_cnv itm = match Hashtbl.find lhash itm with
    | Cnvlst (nam, itms) -> nam, itms
    | oth -> failwith ("item "^itm^" is not a verilog uitm")

let find_rtl itm = match Hashtbl.find lhash itm with
    | Rtl (nam, itms) -> nam, itms
    | oth -> failwith ("item "^itm^" is not a verilog uitm")

let find_ilang itm = match Hashtbl.find lhash itm with
    | Rtlil (nam, itms) -> nam, itms
    | oth -> failwith ("item "^itm^" is not a RTLIL itm")

let find_sat itm = match Hashtbl.find lhash itm with
    | Sat itms -> itms
    | oth -> failwith ("item "^itm^" is not a SAT itm")

let find_lib lib = match Hashtbl.find lhash lib with
    | Lib (liberty, cells) -> liberty, cells
    | oth -> failwith ("item "^lib^" is not a library")

let hadd found = function
  | Cnvlst (nam, itms) -> Hashtbl.iter (fun k -> function Cnvlst(nam', itms') -> if itms=itms' then found := k | _ -> ()) lhash
  | Rtlil(nam,ilang) -> Hashtbl.iter (fun k -> function Rtlil(nam', ilang') -> if ilang=ilang' then found := k | _ -> ()) lhash
  | Lib (nam, itms) -> Hashtbl.iter (fun k -> function Lib(nam', itms') -> if itms=itms' then found := k | _ -> ()) lhash
  | Rtl (nam, itms) -> Hashtbl.iter (fun k -> function Rtl(nam', itms') -> if itms=itms' then found := k | _ -> ()) lhash
  | Sat itms -> Hashtbl.iter (fun k -> function Sat itms' -> if itms=itms' then found := k | _ -> ()) lhash

let hadd x =
  let found = ref "" in hadd found x;
  if !found = "" then (let nxtitm = nxtitm' () in Hashtbl.add lhash nxtitm x; nxtitm) else !found

let lcnvitm mapitm = 
  let modnam, map = find_cnv mapitm in
  let nam,ilang = Cnv_ilang.cnv_ilang modnam map in
  hadd (Rtlil (nam, ilang))

let lmapitm lib rtlitm = 
  let modnam, rtl = find_rtl rtlitm in
  let liberty, cells = find_lib lib in
  let map = Rtl_map.map cells modnam rtl in
  hadd (Cnvlst (modnam, map))

let lcnvsat itm =
  let ilang = find_ilang itm in
  let ind = Source_generic_main.cnv_sat_tree' ilang in
  hadd (Sat ind)

let lcmpitm gold rev = 
  let goldlst = Source_generic_main.cnv_sat_arg (find_sat gold) in
  let revlst = Source_generic_main.cnv_sat_arg (find_sat rev) in
  let status = Source_generic_main.cmp_sat goldlst revlst in
  if false then print_endline status;
  status

let lcmpz3 gold rev = 
  let goldlst = Source_generic_main.cnv_sat_arg (find_sat gold) in
  let revlst = Source_generic_main.cnv_sat_arg (find_sat rev) in
  let status = Z3_example.z3compare goldlst revlst in
  if false then print_endline status;
  status

let gold_rtlil v =
  snd (Rtlil_input_rewrite.parse (Rtlil_input_rewrite.parse_output_ast_from_rtlil_pipe v))

let ldumplib lib =
  let liberty, cells = find_lib lib in
  print_endline ("Dumping cells: "^string_of_int (List.length cells));
  Rtl_map.dumpv cells liberty

let lhardcnv itm =
  let modnam, itms = find_cnv itm in
  let rtl = Input_hardcaml.cnv (modnam, itms) in
  hadd (Rtl (modnam, rtl))

let ltranlst v =
  let cnvlst = Source_text_verible_rewrite.tranlst v in
  let nxtitm = ref "" in
  List.iter (fun (nam,itm) -> nxtitm := hadd (Cnvlst (nam,itm))) cnvlst;
  !nxtitm

let ltranxml f =
  let cnvlst = Input_verilator.tranxml f in
  let nxtitm = ref "" in
  List.iter (fun (nam,(_,itm)) -> nxtitm := hadd (Cnvlst (nam,itm))) cnvlst;
  !nxtitm

let ltranuhdmall f =
  let cnvlst = Input_lex.tranall f in
  let nxtitm = ref "" in
  List.iter (fun (nam,(_,itm)) -> nxtitm := hadd (Cnvlst (nam,itm))) cnvlst;
  !nxtitm

let ltranuhdmtop f =
  let cnvlst = Input_lex.trantop f in
  let nxtitm = ref "" in
  List.iter (fun (nam,(_,itm)) -> nxtitm := hadd (Cnvlst (nam,itm))) cnvlst;
  !nxtitm

let lrtlil v =
  let gold = gold_rtlil v in 
  let nxtitm = ref "" in
  List.iter (fun (nam, itm) -> nxtitm := hadd (Rtlil (nam, itm))) gold;
  !nxtitm

let lreadlib lib =
  let liberty, cells = Rtl_map.read_lib lib in
  hadd (Lib (liberty, cells))

let lnam itm =
  let nam = match Hashtbl.find lhash itm with
  | Cnvlst (nam, itms) -> nam
  | Rtlil (nam, itms) -> nam
  | Lib (nam, itms) -> nam
  | Rtl (nam, itms) -> nam
  | Sat itms -> itm in
  print_endline nam;
  if nam.[0]='\\' then String.sub nam 1 (String.length nam-1) else nam

let ldump stem itm =
  match Hashtbl.find lhash itm with
  | Cnvlst (nam, itms) -> Input_dump.dump' stem (nam, ((), (itms)))
  | Rtlil (nam, itms) -> Rtlil_dump.dumprtl stem (nam, itms)
  | Lib (nam, itms) -> failwith ("Library "^nam^" cannot be dumped with this command")
  | Rtl (nam, itms) -> failwith ("RTL "^nam^" cannot be dumped with this command")
  | Sat itms -> failwith ("Sat item "^itm^" cannot be dumped with this command")

let litms () =
  let itmlst = ref [] in
  Hashtbl.iter (fun k -> function
  | Cnvlst (nam, itms) -> itmlst := (k^"\t"^nam^"\tverilog item") :: !itmlst
  | Rtlil (nam, itms) -> itmlst := (k^"\t"^nam^"\trtlil item") :: !itmlst
  | Lib (nam, itms) -> itmlst := (k^"\t"^nam^"\tlibrary item") :: !itmlst
  | Rtl (nam, itms) -> itmlst := (k^"\t"^nam^"\tcompiled item") :: !itmlst
  | Sat itms -> itmlst := (k^"\t\tSAT netlist item") :: !itmlst
) lhash;
  String.concat "\n" (List.sort compare !itmlst)

let leqv stem =
  let script = stem^".eqy" in
  let fd = open_out script in
  output_string fd ("[options]\n");
  output_string fd ("\n");
  output_string fd ("[gold]\n");
  output_string fd ("read_ilang "^stem^"_gold.ilang\n");
  output_string fd ("prep -top "^stem^"\n");
  output_string fd ("\n");
  output_string fd ("[gate]\n");
  output_string fd ("read_ilang "^stem^"_rev.ilang\n");
  output_string fd ("prep -top "^stem^"\n");
  output_string fd ("\n");
  output_string fd ("[strategy simple]\n");
  output_string fd ("use sat\n");
  output_string fd ("depth 10\n");
  output_string fd ("\n");
  close_out fd;
  string_of_int (Sys.command ("eqy -f "^script))

let lsta gate stem liberty =
  let env = "STA_"^stem in
  print_endline env;
  let script = stem^".tcl" in
  let fd = open_out script in
  output_string fd ("read_lib "^liberty^".lib\n");
  output_string fd ("read_verilog "^gate^"\n");
  output_string fd ("current_design "^stem^"\n");
  output_string fd ("link\n");
  output_string fd (try let cmds = String.concat "\n" (String.split_on_char ';' (Sys.getenv env))^"\n" in print_endline cmds; cmds with _ -> "report_checks -unconstrained\nexit\n");
  close_out fd;
  print_endline ("Status = "^string_of_int (Sys.command ("sta -no_splash -threads max -no_init "^script)))

module LuaChar = struct
    type 'a t	    = char
    let tname	    = "char"
    let eq _	    = fun x y -> x = y
    let to_string   = fun _ c -> String.make 1 c 
end

module Pair = struct
    type 'a t	    = 'a * 'a
    let tname	    = "pair"
    let eq _	    = fun x y -> x = y
    let to_string   = fun f (x,y) -> Printf.sprintf "(%s,%s)" (f x) (f y)
    let mk  x y     = (x,y)
    let fst         = fst
    let snd         = snd
end


module T =			    (* new types *)
    Lua.Lib.Combine.T3              (* T3 == link 3 modules *)
	(LuaChar)                   (* TV1 *)
	(Pair)                      (* TV2 *)    
	(Luaiolib.T)                (* TV3 *)

module LuaCharT     = T.TV1
module PairT        = T.TV2
module LuaioT       = T.TV3

module MakeLib 
    (CharV: Lua.Lib.TYPEVIEW with type 'a t        = 'a LuaChar.t)
    (PairV: Lua.Lib.TYPEVIEW with type 'a t        = 'a Pair.t
                             and  type 'a combined = 'a CharV.combined)
	: Lua.Lib.USERCODE with type 'a userdata' = 'a CharV.combined = struct
	
    type 'a userdata' = 'a PairV.combined
    module M (C: Lua.Lib.CORE with type 'a V.userdata' = 'a userdata') = struct
	module V = C.V
	let ( **-> ) = V.( **-> )
	let ( **->> ) x y = x **-> V.result y
        module Map = struct
    let pair = PairV.makemap V.userdata V.projection
    let char = CharV.makemap V.userdata V.projection
end    

let init g = 

let wrap1 f a = try f a with e -> Printexc.print_backtrace stdout; raise e in
let wrap2 f a b = try f a b with e -> Printexc.print_backtrace stdout; raise e in

C.register_module "Pair"
    [ "mk", V.efunc (V.value **-> V.value **->> Map.pair) Pair.mk
    ; "fst",V.efunc (Map.pair **->> V.value)              Pair.fst
    ; "snd",V.efunc (Map.pair **->> V.value)              Pair.snd
    ] g;

    C.register_module "Char"
    [ "mk", V.efunc (V.string **->> Map.char)
            (function 
            | "" -> C.error "Char.mk: empty string"   
            | s  -> s.[0]
            )
    ] g;        
 
    C.register_module "Sys" [
    "arg", V.efunc (V.int **->> V.string) (fun ix -> List.nth !saved_args ix);
    "argv", V.efunc (V.unit **->> V.list V.string) (fun () -> !saved_args);
    "getenv", V.efunc (V.string **->> V.string) Sys.getenv;
    "test", V.efunc (V.string **-> V.string **->> V.string) (fun x y -> x^y);
    ] g;
 
    C.register_module "verible" [
    "tranlst", V.efunc (V.string **->> V.string) (wrap1 ltranlst);
    "cnvitm", V.efunc (V.string **->> V.string) (wrap1 lcnvitm);
    "mapitm", V.efunc (V.string **-> V.string **->> V.string) (wrap2 lmapitm);
    "satitm", V.efunc (V.string **->> V.string) (wrap1 lcnvsat);
    "cmpitm", V.efunc (V.string **-> V.string **->> V.string) (wrap2 lcmpitm);
    ] g;

    C.register_module "verilator" [
    (*
     "tran", V.efunc (V.string **-> V.string **->> V.unit) (wrap2 Input_verilator.tran);
     *)
    "tranxml", V.efunc (V.string **->> V.string) (wrap1 ltranxml);
    ] g;

    C.register_module "pipe" [
    "uhdmall", V.efunc (V.string **->> V.string) (wrap1 ltranuhdmall);
    "uhdmtop", V.efunc (V.string **->> V.string) (wrap1 ltranuhdmtop);
    "rtlil", V.efunc (V.string **->> V.string) (wrap1 lrtlil);
    ] g;

    C.register_module "hardcaml" [
    "cnv", V.efunc (V.string **->> V.string) (wrap1 lhardcnv);
    ] g;

    C.register_module "itms" [
    "itm", V.efunc (V.unit **->> V.string) (wrap1 litms);
    "nam", V.efunc (V.string **->> V.string) (wrap1 lnam);
    "dump", V.efunc (V.string **-> V.string **->> V.unit) (wrap2 ldump);
    ] g;

    C.register_module "liberty" [
    "read", V.efunc (V.string **->> V.string) (wrap1 lreadlib);
    "dump", V.efunc (V.string **->> V.unit) (wrap1 ldumplib);
    ] g;

    C.register_module "external" [
    "eqv", V.efunc (V.string **->> V.string) (wrap1 leqv);
    "sta", V.efunc (V.string **-> V.string **-> V.string **->> V.unit) (wrap2 lsta);
    ] g;

    C.register_module "z3" [
    "cmp", V.efunc (V.string **-> V.string **->> V.string) (wrap2 lcmpz3);    
    ] g;

    end (* M *)
end (* MakeLib *)

module W = Lua.Lib.WithType (T)
module C  =
    Lua.Lib.Combine.C5  (* C5 == combine 4 code modules *)
	(Luaiolib.Make(LuaioT))
        (Luacamllib.Make(LuaioT))
	(W (Luastrlib.M))
	(W (Luamathlib.M))
	(MakeLib (LuaCharT) (PairT))


module I =			    (* interpreter *)  
    Lua.MakeInterp
	(Lua.Parser.MakeStandard)
	(Lua.MakeEval (T) (C))

let cmdline verbose eval itm =
  if verbose then print_endline ("argv: "^itm);
  let fd = open_in itm in
  let itm = ref "" in
  try while true do let s = input_line fd in itm := !itm ^ "\n" ^ s done with _ -> ();
  close_in fd;
  if verbose then print_endline ("eval: "^ !itm);
  try eval !itm with e -> print_endline (Printexc.to_string_default e)

let main args =
    saved_args := Sys.argv.(0) :: args;
    let verbose = try int_of_string (Sys.getenv ("LUA_CLIENT_VERBOSE")) > 0 with _ -> false in
    let state   = I.mk () in (* fresh Lua interpreter *)
    let eval e  = ignore (I.dostring state e) in
    (match args with hd::tl -> cmdline verbose eval hd | _ -> print_endline "Interactive mode");
    while true do
    print_string "toplevel> ";
    let itm = ref "" in
    let scan = ref true in
    while !scan do let s = read_line() in if s = "" then scan := false else itm := !itm ^ "\n" ^ s done;
    if verbose then print_endline ("eval: "^ !itm);
    try eval !itm with e -> print_string (Printexc.to_string_default e^"\n* "); done

let eargs = try String.split_on_char ';' (Sys.getenv "LUA_ARGS") with _ -> List.tl (Array.to_list Sys.argv)

let _ = try main eargs with End_of_file -> ()
