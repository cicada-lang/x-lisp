# x-lisp

Dynamicly typed language with GC (optional explicit free).

`define-generic`
`define-handler`
`define-data`
`match-data`

```scheme
(define-data exp?
  (var-exp (name string?))
  (fn-exp (name string?) (body exp?))
  (ap-exp (target exp?) (arg exp?)))

(match-data exp? exp
  ((var-exp name) ...)
  ((fn-exp name body) ...)
  ((ap-exp target arg) ...))
```
