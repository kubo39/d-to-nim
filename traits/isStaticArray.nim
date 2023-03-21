# https://dlang.org/spec/traits.html#isStaticArray
#
# nim c --verbosity:0 traits/isStaticArray.nim

const arr1 = [1, 2, 3]
const arr2 = @[1, 2, 3]

static:
    doAssert array[3, int] is array
    doAssert arr1 is array
    doAssert seq[int] isnot array
    doAssert arr2 isnot array
