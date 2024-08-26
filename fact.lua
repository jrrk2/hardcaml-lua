#!/usr/bin/env hardcaml-lua

function factorial(n)
  local x = 1
  i = 2
  while i <= n do
    x = x * i
    i = i + 1
  end
  return x
end

n=6
print("fact("..n..")="..factorial(n))
exit()
