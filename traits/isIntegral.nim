# https://dlang.org/spec/traits.html#isIntegral
#
# nim c --verbosity:0 traits/isIntegral.nim

var i: int
var f: float
type t = int
var x: t
type E = enum A, B

static:
    doAssert int is SomeInteger
    doAssert i is SomeInteger
    doAssert float isnot SomeInteger
    doAssert f isnot SomeInteger
    doAssert t is SomeInteger
    doAssert x is SomeInteger
    doAssert E isnot SomeInteger
    doAssert A isnot SomeInteger
    doAssert bool isnot SomeInteger

# `SomeOrdinal` is more like `isIntegral`.
static:
    doAssert int is SomeOrdinal
    doAssert i is SomeOrdinal
    doAssert float isnot SomeOrdinal
    doAssert f isnot SomeOrdinal
    doAssert t is SomeOrdinal
    doAssert x is SomeOrdinal
    doAssert E is SomeOrdinal
    doAssert A is SomeOrdinal
    doAssert bool is SomeOrdinal
