# https://dlang.org/spec/pragma.html#crtctor
#
# nim c -r --verbosity:0 pragma/crt_constructor.nim

var initCount: int

# https://nim-lang.org/docs/manual.html#implementation-specific-pragmas-codegendecl-pragma
#  * Add exportc pragma to avoid optimized-out.
proc initializer() {.codegenDecl: "NIM_POSIX_INIT $# $#$#".} =
  initCount += 1

initializer()
doAssert initCount == 2 # because initializer proc is called before C's main function.
