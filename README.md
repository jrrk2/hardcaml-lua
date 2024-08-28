Introduction:

Why hardcaml-lua?

Hardcaml provides a useful synthesis engine and new language to solve hard problems.
Hardcaml-lua provides a lua frontend to hardcaml which enables importing from system verilog,
recursive gate-level mapping and SAT solving using msat (builtin), z3 (ocaml-bindings), or eqy (external process)

In terms of system-verilog interface, several options are available:

verilator --xml-only mode generates an elaborated netlist which can be read by hardcaml-lua

    function verilator_parse(maplib,v)
      local xml="obj_dir"
      execute("rm -f "..xml.."/*")
      execute("verilator --quiet --xml-only -Wno-WIDTHEXPAND -Wno-WIDTHTRUNC "..v)
      local goldver = verilator.tranxml(xml)
      print("gold = "..goldver)
      local goldmap=gatemap(maplib,goldver)
      sta(maplib,goldmap)
      return goldver, goldmap
    end

surelog generates an opaque binary UHDM format which can be read by hardcaml-lua by piping through uhdm-dump

    function uhdm_parse(maplib,v)
      local uhdm="slpp_all/surelog.uhdm"
      execute("rm -f "..uhdm)
      execute("surelog -parse -sverilog "..v)
      print(uhdm)
      local ver=pipe.uhdmtop("uhdm-dump "..uhdm)
      print(ver)
      local revmap=gatemap(maplib,ver)
      sta(maplib,revmap)
      return ver, revmap
    end

for comparison yosys supports a subset of system verilog and generates rtlil a.k.a. ilang that we can read

    function rtlil_parse(v)
      local gold = pipe.rtlil("yosys -q -q -p 'read_verilog -sv "..v.."; synth; write_ilang'")
      print(gold)
      return gold
    end

Another front-end based on the verible parse tree converted to OCaml translates to the same database format

    function verible_parse(maplib,v)
      local goldver = verible.tranlst(v)
      local goldmap=gatemap(maplib,goldver)
      sta(maplib,goldmap)
      return goldver, goldmap
    end

After mapping to gates an optional step allows static timing analysis with an external tool:

    function sta(maplib,itmmap)
    itms.dump("_map",itmmap)
    local topmod=itms.nam(itmmap)
    print(topmod)
    print(external.sta(topmod.."_map.v",topmod,maplib))
    end

After necessary conversions, the netlists based on generic gates can be converted to a SAT problem directly:

    function allsat(goldver,revver)
      local satlib=readlib()
      local gold=convert(map(satlib,goldver))
      local rev=convert(map(satlib,revver))
      z3sat(gold,rev)
      minisat(gold,rev)
    end

    function rtlilsat(v,revver)
      local ilang=rtlil_parse(v)
      local satlib=readlib()
      local rev=convert(map(satlib,revver))
      eqv(ilang,rev)
      z3sat(ilang,rev)
      --minisat(ilang,rev)
    end

or compared with an external tool in black-box mode:

    function eqv(gold,rev)
      local topmod=itms.nam(rev)
      itms.dump("_gold",gold)
      itms.dump("_rev",rev)
      print(external.eqv(topmod))
    end

The conversion to Hardcaml only supports a small subset of system-verilog files at the moment,
partly due to differences in representation and partly my own lack of knowledge.
One of the benefits of the approach is that you can choose the architecture of adders and multipliers,
only surelog supports these attributes at the moment.

Tutorial:
  After first installation from opam (version 0.0.1 at the time of writing) the hardcaml-lua executable provides little functionality,
  merely dropping to an interactive lua prompt. One way to proceed would be to copy verify.lua and library.lua into your project directory
  using syntax such as this:

    cp `ocamlc -where`/../../.opam-switch/sources/hardcaml-lua.0.0.1/{library,verify}.lua .
    cp `ocamlc -where`/../../.opam-switch/sources/hardcaml-lua.0.0.1/test/hardcaml/blocking_add.sv .

  Access to libraries may be provided as follows:
  
    ln -s `ocamlc -where`/../../.opam-switch/sources/hardcaml-lua.0.0.1/liberty .
    
  A pending change to hardcaml-lua allows to invoke from a shebang ( #!/usr/bin/env hardcaml-lua )

  The released version requires an explicit call of the executable:

    hardcaml-lua verify.lua blocking_add.sv

  The output of the tool will look like this if all optional tools are installed. The optional tools are:

      sta from the package opensta
      yosys from the package yosys
      eqy manually installed as per these instructions: https://yosyshq.readthedocs.io/projects/eqy/en/latest/install.html#eqy
      
    HelloUHDM/Verilator
    verible_pat_cnv
    transeq1
    0
    1
    2
    3
    dump' blocking_add
    f "blocking_add";; /* blocking_add_check.v */
    134
    itm2
    blocking_add_hardcaml.v
    b
    a
    y
    itm4
    dump' blocking_add
    f "blocking_add";; /* blocking_add_map.v */
    blocking_add
    blocking_add
    STA_blocking_add
    Startpoint: a[0] (input port)
    Endpoint: BUF_X1_2153_0/Z (internal pin)
    Path Group: (none)
    Path Type: max
    
      Delay    Time   Description
    ---------------------------------------------------------
       0.00    0.00 v input external delay
       0.00    0.00 v a[0] (in)
       0.02    0.02 v BUF_X1_1974/Z (BUF_X1)
       0.04    0.06 v AND2_X1_1975/ZN (AND2_X1)
       0.03    0.09 v AND2_X1_1976/ZN (AND2_X1)
       0.05    0.13 v OR2_X1_1977/ZN (OR2_X1)
       0.06    0.19 v OR2_X1_1978/ZN (OR2_X1)
       0.03    0.22 v AND2_X1_1945/ZN (AND2_X1)
       0.04    0.26 v OR2_X1_1947/ZN (OR2_X1)
       0.05    0.31 v OR2_X1_1948/ZN (OR2_X1)
       0.03    0.33 v BUF_X1_1955_4/Z (BUF_X1)
       0.02    0.36 v BUF_X1_1956_3/Z (BUF_X1)
       0.03    0.39 v BUF_X1_2095/Z (BUF_X1)
       0.06    0.44 v XOR2_X1_2066/Z (XOR2_X1)
       0.04    0.48 v AND2_X1_2049/ZN (AND2_X1)
       0.03    0.51 v AND2_X1_2039/ZN (AND2_X1)
       0.04    0.55 v OR2_X1_2040/ZN (OR2_X1)
       0.05    0.60 v OR2_X1_2041/ZN (OR2_X1)
       0.05    0.65 v XOR2_X1_2042/Z (XOR2_X1)
       0.03    0.68 v BUF_X1_2117_3/Z (BUF_X1)
       0.02    0.70 v BUF_X1_2118_2/Z (BUF_X1)
       0.02    0.72 v BUF_X1_2119_2/Z (BUF_X1)
       0.02    0.75 v BUF_X1_2120_2/Z (BUF_X1)
       0.02    0.77 v BUF_X1_2122_26/Z (BUF_X1)
       0.03    0.80 v BUF_X1_1772/Z (BUF_X1)
       0.03    0.83 v AND2_X1_1773/ZN (AND2_X1)
       0.03    0.86 v AND2_X1_1654/ZN (AND2_X1)
       0.05    0.91 v OR2_X1_1655/ZN (OR2_X1)
       0.03    0.93 v AND2_X1_1558/ZN (AND2_X1)
       0.05    0.98 v OR2_X1_1559/ZN (OR2_X1)
       0.05    1.03 v OR2_X1_1470/ZN (OR2_X1)
       0.05    1.08 v OR2_X1_1471/ZN (OR2_X1)
       0.05    1.14 v OR2_X1_1383/ZN (OR2_X1)
       0.02    1.16 ^ XOR2_X1_1384/Z (XOR2_X1)
       0.02    1.18 ^ BUF_X1_2132_23/Z (BUF_X1)
       0.03    1.21 ^ BUF_X1_1213/Z (BUF_X1)
       0.02    1.23 v XOR2_X1_1207/Z (XOR2_X1)
       0.03    1.26 v AND2_X1_1211/ZN (AND2_X1)
       0.05    1.31 v OR2_X1_1215/ZN (OR2_X1)
       0.03    1.34 v AND2_X1_1216/ZN (AND2_X1)
       0.05    1.40 v OR2_X1_1226/ZN (OR2_X1)
       0.03    1.43 v AND2_X1_1227/ZN (AND2_X1)
       0.04    1.47 v OR2_X1_1250/ZN (OR2_X1)
       0.09    1.56 v OR2_X1_1251/ZN (OR2_X1)
       0.04    1.60 v AND2_X1_1008/ZN (AND2_X1)
       0.04    1.64 v OR2_X1_1009/ZN (OR2_X1)
       0.05    1.69 v OR2_X1_1010/ZN (OR2_X1)
       0.05    1.74 v XOR2_X1_1011/Z (XOR2_X1)
       0.03    1.77 v BUF_X1_2138_16/Z (BUF_X1)
       0.03    1.80 v BUF_X1_820/Z (BUF_X1)
       0.03    1.82 v AND2_X1_821/ZN (AND2_X1)
       0.05    1.88 v OR2_X1_822/ZN (OR2_X1)
       0.03    1.91 v AND2_X1_823/ZN (AND2_X1)
       0.05    1.96 v OR2_X1_833/ZN (OR2_X1)
       0.03    1.99 v AND2_X1_834/ZN (AND2_X1)
       0.06    2.06 v OR2_X1_857/ZN (OR2_X1)
       0.04    2.09 v AND2_X1_611/ZN (AND2_X1)
       0.04    2.13 v OR2_X1_612/ZN (OR2_X1)
       0.05    2.18 v OR2_X1_613/ZN (OR2_X1)
       0.05    2.23 v OR2_X1_614/ZN (OR2_X1)
       0.05    2.28 v XOR2_X1_615/Z (XOR2_X1)
       0.03    2.31 v BUF_X1_2145_9/Z (BUF_X1)
       0.03    2.34 v BUF_X1_408/Z (BUF_X1)
       0.03    2.37 v AND2_X1_409/ZN (AND2_X1)
       0.05    2.42 v OR2_X1_410/ZN (OR2_X1)
       0.03    2.45 v AND2_X1_411/ZN (AND2_X1)
       0.05    2.50 v OR2_X1_421/ZN (OR2_X1)
       0.03    2.54 v AND2_X1_422/ZN (AND2_X1)
       0.04    2.58 v OR2_X1_445/ZN (OR2_X1)
       0.05    2.63 v OR2_X1_446/ZN (OR2_X1)
       0.06    2.68 v OR2_X1_447/ZN (OR2_X1)
       0.03    2.71 v AND2_X1_448/ZN (AND2_X1)
       0.04    2.76 v OR2_X1_2149/ZN (OR2_X1)
       0.05    2.81 v OR2_X1_2150/ZN (OR2_X1)
       0.05    2.86 v XOR2_X1_2152/Z (XOR2_X1)
       0.02    2.88 v BUF_X1_2153_0/Z (BUF_X1)
               2.88   data arrival time
    ---------------------------------------------------------
    (Path is unconstrained)
    
    
    Saving command history
    Status = 0
    nil
    itm5
    23
    itm6
    blocking_add_hardcaml.v
    b
    a
    y
    \blocking_add
    blocking_add_gold.ilang
    blocking_add_rev.ilang
    EQY 15:41:56 [blocking_add] read_gold: starting process "yosys -ql blocking_add/gold.log blocking_add/gold.ys"
    EQY 15:41:56 [blocking_add] read_gold: finished (returncode=0)
    EQY 15:41:56 [blocking_add] read_gate: starting process "yosys -ql blocking_add/gate.log blocking_add/gate.ys"
    EQY 15:41:56 [blocking_add] read_gate: finished (returncode=0)
    EQY 15:41:56 [blocking_add] combine: starting process "yosys -ql blocking_add/combine.log blocking_add/combine.ys"
    EQY 15:41:56 [blocking_add] combine: finished (returncode=0)
    EQY 15:41:56 [blocking_add] partition: starting process "cd blocking_add; yosys -ql partition.log partition.ys"
    EQY 15:41:56 [blocking_add] partition: finished (returncode=0)
    EQY 15:41:56 [blocking_add] Warning: Partition blocking_add.y.1 contains 1 unused gate inputs.
    EQY 15:41:56 [blocking_add] Warning: Partition blocking_add.y.0 contains 1 unused gate inputs.
    EQY 15:41:56 [blocking_add] run: starting process "make -C blocking_add -f strategies.mk"
    EQY 15:41:56 [blocking_add] run: make: Entering directory '/home/jonathan/work/blocking_add'
    EQY 15:41:56 [blocking_add] run: Running strategy 'simple' on 'blocking_add.y.0'..
    EQY 15:41:56 [blocking_add] run: Proved equivalence of partition 'blocking_add.y.0' using strategy 'simple'
    EQY 15:41:56 [blocking_add] run: Running strategy 'simple' on 'blocking_add.y.1'..
    EQY 15:41:56 [blocking_add] run: Proved equivalence of partition 'blocking_add.y.1' using strategy 'simple'
    EQY 15:41:56 [blocking_add] run: Running strategy 'simple' on 'blocking_add.y.2'..
    EQY 15:41:56 [blocking_add] run: Proved equivalence of partition 'blocking_add.y.2' using strategy 'simple'
    EQY 15:41:56 [blocking_add] run: Running strategy 'simple' on 'blocking_add.y.3'..
    EQY 15:41:56 [blocking_add] run: Proved equivalence of partition 'blocking_add.y.3' using strategy 'simple'
    EQY 15:41:56 [blocking_add] run: make -f strategies.mk summary
    EQY 15:41:56 [blocking_add] run: make[1]: Entering directory '/home/jonathan/work/blocking_add'
    EQY 15:41:56 [blocking_add] run: make[1]: Leaving directory '/home/jonathan/work/blocking_add'
    EQY 15:41:56 [blocking_add] run: make: Leaving directory '/home/jonathan/work/blocking_add'
    EQY 15:41:56 [blocking_add] run: finished (returncode=0)
    EQY 15:41:56 [blocking_add] Successfully proved equivalence of partition blocking_add.y.3
    EQY 15:41:56 [blocking_add] Successfully proved equivalence of partition blocking_add.y.2
    EQY 15:41:56 [blocking_add] Successfully proved equivalence of partition blocking_add.y.1
    EQY 15:41:56 [blocking_add] Successfully proved equivalence of partition blocking_add.y.0
    EQY 15:41:56 [blocking_add] Successfully proved designs equivalent
    EQY 15:41:56 [blocking_add] summary: Elapsed clock time [H:MM:SS (secs)]: 0:00:00 (0)
    EQY 15:41:56 [blocking_add] summary: Elapsed process time [H:MM:SS (secs)]: 0:00:00 (0)
    EQY 15:41:56 [blocking_add] DONE (PASS, rc=0)
    0
    Converting: \blocking_add
    \blocking_add
    inffopslt length: 12
    Converting: \blocking_add
    \blocking_add
    inffopslt length: 12
    z3compare found no discrepancy
    itm1	blocking_add	verilog item
    itm10		SAT netlist item
    itm2	liberty/NangateOpenCellLibrary_typical	library item
    itm3	blocking_add	compiled item
    itm4	blocking_add	verilog item
    itm5	\blocking_add	rtlil item
    itm6	liberty/simcells	library item
    itm7	blocking_add	verilog item
    itm8	\blocking_add	rtlil item
    itm9		SAT netlist item
    toplevel> jonathan@user-NUC10i7FNK:~/work$ 

Jonathan Kimmitt
28-08-2024
