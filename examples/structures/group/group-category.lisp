(import group-t "group.lisp")
(import category-t "../category/index.lisp")
(import equal-swap equal-map equal-compose "../equality/index.lisp")
(import group-homomorphism-t
        id-group-homomorphism
        compose-group-homomorphism
        "group-homomorphism.lisp")

(define group-category
  (new category-t
    :object-t group-t
    :morphism-t (lambda (G H) (group-homomorphism-t G H))
    :id id-group-homomorphism
    :compose compose-group-homomorphism
    ;; NOTE To prove `equal` between objects,
    ;; is to prove `equal` between each property.
    :id-left
    (the (equal-t (group-homomorphism-t f:dom f:cod)
           (compose-group-homomorphism (id-group-homomorphism f:dom) f)
           f)
      TODO)
    :id-right
    TODO
    :compose-associative
    TODO))
