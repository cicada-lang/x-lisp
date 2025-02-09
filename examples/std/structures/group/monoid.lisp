(import semigroup "semigroup.lisp")

(export monoid)

(define-class monoid (semigroup)
  :id element

  :id-left
  (forall ((x @element))
    (equal @element (@mul @id x) x))

  :id-right
  (forall ((x @element))
    (equal @element (@mul x @id) x)))
