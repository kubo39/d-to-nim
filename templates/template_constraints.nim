# https://dlang.org/spec/template.html#template_constraints
#

type T = concept n
            n and 1

proc foo[_: T]() = discard

static:
    foo[3]()
    # foo[3.14]()  # cannot instantiate

type
    isIntegral = concept x
                    x is Ordinal

    Bar[_: isIntegral] = object

static:
    var x: Bar[int]
    discard x
    # var y: Bar[float64]  # cannot instantiate
