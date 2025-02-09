(import category-t "category.lisp")

(define trivial-category
  (new category-t
    :object-t trivial-t
    :morphism-t (lambda (dom cod) trivial-t)
    :id (lambda (x) sole)
    :compose (lambda (f g) sole)
    :id-left (lambda (f) refl)
    :id-right (lambda (f) refl)
    :compose-associative (lambda (f g h) refl)))
