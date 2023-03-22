# https://dlang.org/spec/template.html#alias_symbol
#

type Foo = object
    x: int

template Bar(a: typedesc): typedesc =
    a.x

type t1 = distinct Bar(Foo)
var x: t1
echo repr x
