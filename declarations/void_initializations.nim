# https://dlang.org/spec/declaration.html#void_init
#
# nim c -r --verbosity:0 declarations/void_initializations.nim

proc bad() =
    var x {.noinit.}: int
    echo x

bad()
