Introduction:

Why hardcaml-lua?

Hardcaml provides a useful synthesis engine and new language to solve hard problems.
Hardcaml-lua provides a lua frontend to hardcaml which enables importing from system verilog,
reursive gate-level mapping and SAT solving using msat (builtin), z3 (ocaml-bindings), or eqy (external process)

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

for comparison yosys supports a subset of system verilog and generates rtlil aka ilang that we can read

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

After mapping to gates an optional step allows static timing analysis with a nexterbal tool:

function sta(maplib,itmmap)
itms.dump("_map",itmmap)
local topmod=itms.nam(itmmap)
print(topmod)
print(external.sta(topmod.."_map.v",topmod,maplib))
end

After necessary conversions the netlists based on generic gates can be converted to a SAT problem directly:

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
One of the benefits of the approach is that you can choose the architecture of adders and multipliers.

Jonathan Kimmitt
26-08-2024
