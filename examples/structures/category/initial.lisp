(import category-t "category.lisp")

(define-class initial-t ()
  :cat category-t
  :object @cat:object-t
  :morphism
  (forall ((x @cat:object-t))
    (@cat:morphism-t @object x))
  :morphism-unique
  (implicit ((x @cat:object-t))
    (forall ((f (@cat:morphism-t @object x)))
      (equal-t (@cat:morphism-t @object x)
        f (@morphism x)))))
