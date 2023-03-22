# https://dlang.org/spec/template.html#alias_symbol
#
#  nim c -r --verbosity:0 templates/symbol_aliases.nim

template Foo(x: typed): untyped =
    proc () = inc x

block:
    var v = 4
    var incriment = Foo(v)
    incriment()
    doAssert v == 5
