# https://dlang.org/spec/traits.html#isCopyable
#

import typetraits

type S = object

static:
    doAssert supportsCopyMem(S)
    doAssert supportsCopyMem(int)
    doAssert not supportsCopyMem(string)
