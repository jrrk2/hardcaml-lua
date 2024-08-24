open Z3
open Z3.Expr
open Z3.Goal
open Z3.Solver
open Source_text_rewrite_types
    
let othz3 = ref None

let rec z3expr ctx = function
| F.Lit (Made (SCALAR a)) -> Expr.mk_const ctx (Symbol.mk_string ctx a) (Boolean.mk_sort ctx)
| F.Lit (Made (INDEXED (a,ix))) -> Expr.mk_const ctx (Symbol.mk_string ctx (a^"!"^string_of_int ix)) (Boolean.mk_sort ctx)
| F.Comb (F.And, lst) -> Boolean.mk_and ctx (List.map (z3expr ctx) lst)
| F.Comb (F.Or, lst) -> Boolean.mk_or ctx (List.map (z3expr ctx) lst)
| F.Comb (F.Xor, [a;b]) -> Boolean.mk_xor ctx (z3expr ctx a) (z3expr ctx b)
| F.Comb (F.Xor, _) -> failwith "Xor"
| F.Comb (F.Imp, [a;b]) -> Boolean.mk_implies ctx (z3expr ctx a) (z3expr ctx b)
| F.Comb (F.Imp, _) -> failwith "Imp"
| F.Comb (F.Not, [rght]) -> Boolean.mk_not ctx (z3expr ctx rght)
| F.Comb (F.Not, _) -> failwith "Not"
| F.Lit (Made GND) -> Boolean.mk_false ctx
| F.Lit (Made PWR) -> Boolean.mk_true ctx
| F.Lit (Fresh n) -> mk_fresh_const ctx (string_of_int n) (Boolean.mk_sort ctx)

let z3tran ctx = function
| E.SCALAR a, expr -> z3expr ctx expr
| E.INDEXED(a,ix), expr -> z3expr ctx expr
| oth -> othz3 := Some oth; failwith "z3tran"

let z3compare (prt1,form1,wid1) (prt2,form2,wid2) =
let verbose = try int_of_string (Sys.getenv "Z3_GOAL_VERBOSE") > 0 with _ -> false in
let cfg = [("model", "true"); ("proof", "false")] in
let ctx = (mk_context cfg) in

let form' = Boolean.mk_or ctx (List.map2 (fun itm1 itm2 ->
Boolean.mk_xor ctx (z3tran ctx itm1) (z3tran ctx itm2)) form1 form2) in
let g' = (mk_goal ctx true false false) in
Goal.add g' [form'];
if verbose then Printf.printf "%s\n" ("Goal': " ^ (Goal.to_string g'));
let solver' = (mk_solver ctx None) in
List.iter (fun a -> (Solver.add solver' [ a ])) (get_formulas g');
let q = check solver' [] in
let rslt' = if q = SATISFIABLE then
      (match get_model solver' with
      | None -> failwith "get_model"
	| Some (m) ->
	  Printf.sprintf "Z3 found counter-example:\n%s\n" (Model.to_string m))
    else
      "z3compare found no discrepancy"
      in
rslt'
