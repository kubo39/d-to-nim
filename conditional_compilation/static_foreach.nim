# https://dlang.org/spec/version.html#staticforeach
#
# nim c --verbosity:0 conditional_compilation/static_foreach.nim

static:
    for i in 0..4:
        echo i
