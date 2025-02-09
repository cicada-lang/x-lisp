(import groupoid-t "groupoid.lisp")
(import isomorphism-t trivial-category "../category/index.lisp")

(define trivial-isomorphism
  (new isomorphism-t
    :cat trivial-category
    :dom sole
    :cod sole
    :morphism sole
    :inverse sole
    :inverse-left refl
    :inverse-right refl))

(define trivial-groupoid
  (new (groupoid-t :object trivial)
    ...trivial-category
    :inverse (lambda (f) sole)
    :inverse-iso (lambda (f) trivial-isomorphism)))
