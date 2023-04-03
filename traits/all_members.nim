# https://dlang.org/spec/traits.html#allMembers
#

type D = object
    foo: int

var b = D(foo: 123)

for name, field in b.fieldPairs:
    echo name & ": " & $field
