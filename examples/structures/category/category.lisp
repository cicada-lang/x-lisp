;; To each species of mathematical structure,
;; there corresponds a category whose objects have that structure,
;; and whose morphisms preserve it.

(define-class category-t ()
  :object-t type-t
  :morphism-t (-> @object-t @object-t type-t)
  :id (forall ((x @object-t)) (@morphism-t x x))
  :compose
  (implicit ((x @object-t)
             (y @object-t)
             (z @object-t))
    (forall ((f (@morphism-t x y))
             (g (@morphism-t y z)))
      (@morphism-t x z)))
  :id-left
  (implicit ((x @object-t)
             (y @object-t))
    (forall ((f (@morphism-t x y)))
      (equal-t (@morphism-t x y)
        (@compose (@id x) f)
        f)))
  :id-right
  (implicit ((x @object-t)
             (y @object-t))
    (forall ((f (@morphism-t x y)))
      (equal-t (@morphism-t x y)
        (@compose f (@id y))
        f)))
  :compose-associative
  (implicit ((x @object-t)
             (y @object-t)
             (z @object-t)
             (w @object-t))
    (forall ((f (@morphism-t x y))
             (g (@morphism-t y z))
             (h (@morphism-t z w)))
      (equal-t (@morphism-t x w)
        (@compose f (@compose g h))
        (@compose (@compose f g) h)))))
