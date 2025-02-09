(import group "group.lisp")
(import category "../category/index.lisp")
(import equal-swap equal-map equal-compose "../equality/index.lisp")
(import group-homomorphism
        id-group-homomorphism
        compose-group-homomorphism
        "group-homomorphism.lisp")

(define group-category
  (create category
    :object group
    :morphism (lambda (G H) (group-homomorphism G H))
    :id id-group-homomorphism
    :compose compose-group-homomorphism

    ;; NOTE To prove `equal` between objects,
    ;; is to prove `equal` between each property.
    :id-left
    (the (equal (group-homomorphism f:dom f:cod)
                (compose-group-homomorphism (id-group-homomorphism f:dom) f)
                f)
      TODO)

    :id-right
    TODO

    :compose-associative
    TODO))
