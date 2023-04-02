proc foo() = discard

static:
    doAssert compiles(foo())
    doAssert not compiles(3[1])
