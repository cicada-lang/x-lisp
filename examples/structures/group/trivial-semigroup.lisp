(import semigroup "semigroup.lisp")

(define trivial-semigroup
  (create semigroup
    :element trivial
    :compose (lambda (x y) sole)
    :compose-associative (lambda (x y z) refl)))
