# https://dlang.org/spec/template.html#parameters_specialization
#

template TFoo(t: typedesc): untyped = 1
template TFoo(t: typedesc[array]): untyped = 2
template TFoo(t1, t2: typedesc): untyped = 3

static:
    doAssert TFoo(int) == 1
    doAssert TFoo(array[0, float64]) == 2
    doAssert TFoo(char, int) == 3
