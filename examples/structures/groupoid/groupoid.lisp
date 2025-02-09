(import category-t isomorphism-t "../category/index.lisp")

(define-class groupoid-t (category-t)
  :inverse
  (implicit ((x @object-t)
             (y @object-t))
    (-> (@morphism-t x y)
        (@morphism-t y x)))
  ;; NOTE The following use of `isomorphism`
  ;;   is an example of "partly fulfilled object construction".
  :inverse-iso
  (implicit ((x @object-t)
             (y @object-t))
    (forall (f (@morphism-t x y))
      (isomorphism-t @super x y f (@inverse f)))))
