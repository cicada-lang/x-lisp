(import group "group.lisp")

(define trivial-group
  (new group
    :element trivial
    :compose (lambda (x y) sole)
    :compose-associative (lambda (x y z) refl)
    :id sole
    :id-left (lambda (x) refl)
    :id-right (lambda (x) refl)
    :inverse (lambda (x) sole)
    :inverse-left (lambda (x) refl)
    :inverse-right (lambda (x) refl)))

trivial-group:compose
(trivial-group:compose sole)
(trivial-group:compose sole sole)

trivial-group:div
(trivial-group:div sole)
(trivial-group:div sole sole)
