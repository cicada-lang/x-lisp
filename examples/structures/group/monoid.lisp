(import semigroup-t "semigroup.lisp")

(define-class monoid-t (semigroup-t)
  :id @element-t
  :id-left (forall ((x @element-t)) (equal-t @element-t (@compose @id x) x))
  :id-right (forall ((x @element-t)) (equal-t @element-t (@compose x @id) x)))
