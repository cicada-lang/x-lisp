(define-class semigroup-t ()
  :element-t type-t
  :compose (-> @element-t @element-t @element-t)
  :compose-associative
  (forall ((x @element-t)
           (y @element-t)
           (z @element-t))
    (equal-t @element-t
      (@compose x (@compose y z))
      (@compose (@compose x y) z))))
