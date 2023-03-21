# https://dlang.org/spec/template.html#alias_symbol
#
#  nim c -r --verbosity:0 templates/symbol_aliases.nim

# untyped pattern.
template Foo(x: untyped, body: untyped) =
    proc incriment = inc x
    block:
        body

block:
    var v = 4
    Foo(v):
        incriment()
    doAssert v == 5


# typed pattern.
template Bar(x: typed) =
    proc incriment = inc x

block:
    var v = 4
    Bar(v)
    incriment()
    doAssert v == 5
