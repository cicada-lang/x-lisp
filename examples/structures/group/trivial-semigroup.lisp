(import semigroup "semigroup.lisp")

(define trivial-semigroup
  (new semigroup
    :element trivial
    :compose (lambda (x y) sole)
    :compose-associative (lambda (x y z) refl)))
