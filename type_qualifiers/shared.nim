# https://dlang.org/spec/const3.html#shared
#

import std/locks

# https://nim-lang.github.io/Nim/manual.html#guards-and-locks
var
    glock: Lock
    x {.guard: glock.}: int

initLock glock

proc foo(): int =
    # inc x  # compile error! => unguarded access: x
    withLock(glock):
        inc x
        result = x

doAssert foo() == 1
