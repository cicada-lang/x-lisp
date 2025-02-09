# x-lisp

Dynamicly typed language with GC (optional explicit free).

`define-generic`
`define-handler`
`define-data`
`match-data`

```scheme
(define-data exp?
  (exp-var (name string?))
  (exp-fn (name string?) (body exp?))
  (exp-ap (target exp?) (arg exp?)))

(match-data exp? exp
  ((exp-var name) ...)
  ((exp-fn name body) ...)
  ((exp-ap target arg) ...))
```

```scheme
(declare add (-> nat? nat? nat?))
(define (add x y) ...)
```
