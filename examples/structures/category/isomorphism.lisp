(import category-t "category.lisp")

;; Two objects have the same structure iff they are isomorphic,
;; and an "abstract object" is an isomorphism class of objects.

(define-class isomorphism-t ()
  :cat category-t
  :dom @cat:object-t
  :cod @cat:object-t
  :morphism (@cat:morphism-t @dom @cod)
  :inverse (@cat:morphism-t @cod @dom)
  :inverse-left
  (equal-t (@cat:morphism-t @dom @dom)
    (@cat:compose @morphism @inverse)
    (@cat:id @dom))
  :inverse-right
  (equal-t (@cat:morphism-t @cod @cod)
    (@cat:compose @inverse @morphism)
    (@cat:id cod)))
