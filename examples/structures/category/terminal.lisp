(import category-t "category.lisp")

(define-class terminal-t ()
  :cat category-t
  :object @cat:object-t
  :morphism
  (forall ((x @cat:object-t))
    (@cat:morphism-t x @object))
  :morphism-unique
  (implicit ((x @cat:object-t))
    (forall ((f (@cat:morphism-t x @object)))
      (equal-t (@cat:morphism-t x @object)
        f (@morphism x)))))
