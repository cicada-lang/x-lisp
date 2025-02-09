(import semigroup "semigroup.lisp")

(define trivial-semigroup
  (create semigroup
    :element trivial
    :mul (lambda (x y) sole)
    :mul-associative (lambda (x y z) refl)))
