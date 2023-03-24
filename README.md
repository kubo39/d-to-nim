# D vs Nim

## Both

* CTFE (Compile-Time Function Execution)
* UFCS (Uniform Function Call Syntax)
* Modules
* Exceptions
* Conditional Compilation (`static if` vs `when`)
* Basic Templates functionality
* Iterators (`range` vs `iterator`)
* Operator Overloading
* prevents race condition (`shared` vs `guards`)
* compile-time context (`ctfe` vs `nimvm`)
* Built-in documentation engine.
* C interop
* C++ interop
* Objective-C interop

## D

* [template instance](https://dlang.org/spec/template.html#template_instantiation)
* powerful [alias declaration](https://dlang.org/spec/declaration.html#alias). for example, alias variable, alias template.
* better compile-time reflection support, see [traits](https://dlang.org/spec/traits.html).
* powerful template.
  * [alias paramters](https://dlang.org/spec/template.html#aliasparameters)
  * [recursive templates](https://dlang.org/spec/template.html#recursive_templates)
  * [template constraints](https://dlang.org/spec/template.html#template_constraints)
* [Class based OOP](https://dlang.org/spec/class.html) support.
* [module constructor/destructor](https://dlang.org/spec/module.html#staticorder) support.
* better error messages.
* better gdb support.

## Nim

* powerful [macro](https://nim-lang.org/docs/manual.html#macros) system.
* another powerful template.
  * [typed and untyped parameters](https://nim-lang.org/docs/manual.html#templates-typed-vs-untyped-parameters)
  * [code block](https://nim-lang.org/docs/manual.html#templates-passing-a-code-block-to-a-template)
* JavaScript backend.
* [NimScript](https://nim-lang.org/docs/nims.html), based on nimvm, for configuration.
* powerful [static statements](https://nim-lang.org/docs/manual.html#statements-and-expressions-static-statementslashexpression) support.
* powerful [static[T]](https://nim-lang.github.io/Nim/manual.html#special-types-static-t) special type.
* [distinct type](https://nim-lang.org/docs/manual.html#types-distinct-type) support.
* Executes an external process at compile-time, see [staticExec](https://nim-lang.org/docs/system.html#staticExec,string,string,string).
* stdlib which works on RTOS, such as FreeRTOS, NuttX or Zephyr.

## Q: which is better?

A: You know what you want! (I mean, it depends.)
