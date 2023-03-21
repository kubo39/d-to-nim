# https://dlang.org/spec/traits.html#isIntegral
#
# nim c --verbosity:0 traits/isIntegral.nim

var i: int
var f: float
type t1 = int
var x: t1
type t2 = distinct int
var y: t2
type E = enum A, B

static:
    doAssert int is SomeInteger
    doAssert i is SomeInteger
    doAssert float isnot SomeInteger
    doAssert f isnot SomeInteger
    doAssert t1 is SomeInteger
    doAssert x is SomeInteger
    doAssert t2 isnot SomeInteger
    doAssert y isnot SomeInteger
    doAssert E isnot SomeInteger
    doAssert A isnot SomeInteger
    doAssert bool isnot SomeInteger

# `SomeOrdinal` is more like `isIntegral`.
static:
    doAssert int is SomeOrdinal
    doAssert i is SomeOrdinal
    doAssert float isnot SomeOrdinal
    doAssert f isnot SomeOrdinal
    doAssert t1 is SomeOrdinal
    doAssert x is SomeOrdinal
    doAssert t2 isnot SomeOrdinal
    doAssert y isnot SomeOrdinal
    doAssert E is SomeOrdinal
    doAssert A is SomeOrdinal
    doAssert bool is SomeOrdinal
