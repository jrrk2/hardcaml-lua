(*
MSAT is free software, using the Apache license, see file LICENSE
Copyright 2016 Guillaume Bury
*)

(** Sat solver

    This modules instanciates a pure sat solver using integers to represent
    atomic propositions.
*)

module String_lit = String_lit

include Msat.S
  with type Formula.t = String_lit.t
   and type theory = unit
   and type lemma = unit
(** A functor that can generate as many solvers as needed. *)

