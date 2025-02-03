# https://dlang.org/spec/traits.html#compiles
#
# nim c --verbosity:0 traits/compiles.nim

proc foo() = discard

static:
    doAssert compiles(foo())
    doAssert not compiles(3[1])
