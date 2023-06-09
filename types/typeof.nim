# https://dlang.org/spec/type.html#typeof
#

block:
    proc f(i: int) =
        var j: typeof(i)
        doAssert j is int
        var x: typeof(3 + 6.0)
        doAssert x is float
        var p: ptr typeof(1)
        doAssert p is ptr
        doAssert p is ptr int
        var a: array[0, typeof(p)]
        doAssert a is array
        doAssert a is array[0, ptr int]
        static:
            doAssert sizeof(typeof('c')) == 1
    doAssert f is proc
    doAssert f is typeof(proc)

block:
    proc f(): int =
        var j: typeof(result)
        doAssert j is int
        42
    doAssert f() is int
    doAssert f is typed
    doAssert f is untyped
    doAssert f isnot typedesc
    doAssert typeof(f) is typedesc

block:
    var i = 1
    var j: typeof((i+=1;i))
    doAssert i == 1
    doAssert j is int

block:
    template t(a: typed): untyped = 0

    doAssert $typeof(t) == "template (a: typed): untyped"

    block:
        type t1 = typeof(t)
        doAssert $typeof(t) == "t1"
        doAssert t(t1) == 0

    type t2 = typeof(t)
    doAssert $typeof(t) == "t1"
    doAssert $t2 == "t2"
    doAssert t is t2

    doAssert t(t) == 0

    doAssert t is typed
    doAssert t is untyped
    doAssert t isnot typedesc
    doAssert t isnot int
    doAssert typeof(t) is typed
    doAssert typeof(t) is untyped
    doAssert typeof(t) is typedesc
    doAssert typeof(t) isnot int
