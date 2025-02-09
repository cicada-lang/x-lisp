(import category-t "category.lisp")

;; To any natural construction on structures of one species,
;; yielding structures of another species,
;; there corresponds a functor
;; from the category of the first species
;; to the category of the second.

;; For example, in the category of types in a programming language,
;; type constructors are endo-functors,
;; and endo-functors are often containers.

;; Functor can also be called natural-construction,
;; which will let the term `natural-transformation` make sense.

(define-class functor-t ()                ;
  :dom category-t
  :cod category-t
  :map (-> @dom:object-t @cod:object-t)
  :fmap (implicit ((x @dom:object-t)
                   (y @dom:object-t))
          (forall ((f (@dom:morphism-t x y)))
            (@cod:morphism-t (@map x) (@map y))))
  :fmap-preserve-compose
  (implicit ((x @dom:object-t)
             (y @dom:object-t)
             (z @dom:object-t))
    (forall ((f (@dom:morphism-t x y))
             (g (@dom:morphism-t y z)))
      (equal-t (@cod:morphism-t (@map x) (@map z))
        (@fmap (@dom:compose f g))
        (@cod:compose (@fmap f) (@fmap g)))))
  :fmap-preserve-id
  (forall ((x @dom:object-t))
    (equal-t (@cod:morphism-t (@map x) (@map x))
      (@fmap (@dom:id x))
      (@cod:id (@map x)))))
