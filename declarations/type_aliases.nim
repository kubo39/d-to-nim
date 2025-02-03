# https://dlang.org/spec/declaration.html#alias-type
#
# nim c -r --verbosity:0 declarations/type_aliases.nim

#type badint = int;
type myint = distinct int;

proc foo(x: int): int =
    result = x

# error: ambiguous call
# proc foo(b: badint): int =
#     result = b

proc foo(m: myint): int =
    result = m.int

echo foo(123)
echo foo(123.myint)
