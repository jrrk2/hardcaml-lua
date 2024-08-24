(lang dune 3.7)
(using menhir 2.1)

(name hardcaml-lua)

(generate_opam_files false)

(source
 (github jrrk2/hardcaml-lua))

(authors "Jonathan Kimmitt")

(maintainers "Jonathan Kimmitt")

(license MIT)

(package
 (name hardcaml-lua)
 (allow_empty)
 (synopsis "A lua client for interfacing hardcaml to verilator, UHDM, Verible and RTLIL front-ends")
 (description "Verilator, Surelog and Verible do not generate synthesised Verilog code directly. This software bridges the gap and verifies the results using build-in minisat solver, z3 or external eqy script")
 (depends xml-light msat hardcaml hardcaml_circuits lua-ml ppx_deriving_yojson z3)
 (tags (Verilator Surelog UHDM Verible Yosys RTLIL)))
