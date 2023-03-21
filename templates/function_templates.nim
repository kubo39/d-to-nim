# https://dlang.org/spec/template.html#function-templates
#
# nim c -r --verbosity:0 templates/function_templates.nim

proc square[T](a: T): T =
    result = a * a

doAssert square(3) == 9
