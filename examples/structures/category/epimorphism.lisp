(import category-t "category.lisp")

(define-class epimorphism-t ()
  :cat category-t
  :dom @cat:object-t
  :cod @cat:object-t
  :morphism (@cat:morphism-t @dom @cod)
  :cancel-left
  (implicit ((x @cat:object-t)
             (f (@cat:morphism-t @cod x))
             (g (@cat:morphism-t @cod x)))
    (-> (equal-t (@cat:morphism-t @dom x)
          (@cat:compose @morphism-t f)
          (@cat:compose @morphism-t g))
        (equal-t (@cat:morphism-t @cod x) f g))))
