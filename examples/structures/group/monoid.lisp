(import semigroup "semigroup.lisp")

(define-class monoid (semigroup)
  :id element

  :id-left
  (forall ((x @element))
    (equal @element (@compose @id x) x))

  :id-right
  (forall ((x @element))
    (equal @element (@compose x @id) x)))
