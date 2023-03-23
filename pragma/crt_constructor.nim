# https://dlang.org/spec/pragma.html#crtctor
#
# nim c -r --verbosity:0 pragma/crt_constructor.nim

var initCount: int

# https://nim-lang.org/docs/manual.html#implementation-specific-pragmas-codegendecl-pragma
#   Add exportc pragma to avoid to be optimized-out.
#   ref: https://github.com/nim-lang/Nim/blob/7f6e800cafc7b73625893fb5280eb8b51a15b252/compiler/ic/dce.nim#L31-L46
proc initializer() {.exportc, codegenDecl: "NIM_POSIX_INIT $# $#$#".} =
  initCount += 1

doAssert initCount == 1 # because initializer proc is called before C's main function.
