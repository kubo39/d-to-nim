# https://dlang.org/spec/template.html#template_value_parameter
#

template Foo(s: static string): untyped =
    proc: string = s & " betty"

block:
    let bar = Foo("hello")
    echo bar()
