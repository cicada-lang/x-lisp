(import monoid-t "monoid.lisp")

(define-class group-t (monoid-t)
  :inverse (-> @element-t @element-t)
  :inverse-left
  (forall ((x @element-t))
    (equal-t @element-t
      (@compose (@inverse x) x)
      @id))
  :inverse-right
  (forall ((x @element-t))
    (equal-t @element-t
      (@compose x (@inverse x))
      @id)))

(claim group-div
  (forall ((g group-t))
    (-> g:element-t g:element-t g:element-t)))
(define (group-div g x y) (g:compose x (g:inverse y)))
