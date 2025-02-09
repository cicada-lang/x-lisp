(import semigroup-t "semigroup.lisp")

(define trivial-semigroup
  (new semigroup-t
    :element-t trivial-t
    :compose (lambda (x y) sole)
    :compose-associative (lambda (x y z) refl)))
