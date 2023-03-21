# https://dlang.org/spec/pragma.html#msg
#
# nim c --verbosity:0 pragma/msg.nim

when defined(kilroy):
    static:
        echo "kilroy is here"
else:
    static:
        echo "kilroy got lost"
