# https://dlang.org/spec/version.html#staticif
#
# nim c -r --verbosity:0 conditional_compilation/static_if.nim

template Int(a: typed): typedesc[SomeInteger] =
    when a == 32: int32
    elif a == 16: int16
    else: static: doAssert(false)

var a: Int(32)
var b: Int(16)
# var c: Int(17)  # error, static assert trips
a = 14
echo a
