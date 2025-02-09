(import monoid "monoid.lisp")

(define-class group (monoid)
  :inverse (-> @element @element)

  :inverse-left
  (forall ((x @element))
    (equal @element
           (@compose (@inverse x) x)
           @id))

  :inverse-right
  (forall ((x @element))
    (equal @element
           (@compose x (@inverse x))
           @id)))

(claim group-div
  (forall ((g group))
    (-> g:element g:element
        g:element)))

(define (group-div (g group) (x g:element) (y g:element))
  (g:compose x (g:inverse y)))
