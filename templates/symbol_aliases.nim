# https://dlang.org/spec/template.html#alias_symbol
#
#  nim c -r --verbosity:0 templates/symbol_aliases.nim

template Foo(x: untyped, body: untyped) =
    proc inc = x += 1
    block:
        body

var v = 4
Foo(v):
    inc()
doAssert v == 5
