# https://dlang.org/spec/type.html#typeof
#

import std/typetraits

block:
    proc f(i: int) =
        var j: typeof(i)
        doAssert j is int
        var x: typeof(3 + 6.0)
        doAssert x is float
        var p: ptr typeof(1)
        doAssert p is ptr
        var a: array[0, typeof(p)]
        doAssert a is array
        static:
            doAssert sizeof(typeof('c')) == 1
        echo "func"
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

block:
    var i = 1
    var j: typeof((i+=1;i))
    doAssert i == 1
    doAssert j is int

block:
    template t(a: typed): untyped = 0

    doAssert name(typeof(t)) == "template (a: typed): untyped"

    block:
        type t1 = typeof(t)
        doAssert name(typeof(t)) == "t1"
        doAssert t(t1) == 0

    type t2 = typeof(t)
    doAssert name(typeof(t)) == "t1"
    doAssert t is t2

    doAssert t(t) == 0

    doAssert typeof(t) is typed
    doAssert typeof(t) is untyped
    doAssert typeof(t) is typedesc
    doAssert typeof(t) isnot int

