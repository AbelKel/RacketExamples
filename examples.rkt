#lang racket


(sqr 4)
(max 10 15)
(cos 0)

(sqrt 1)
(sqrt -1)

(define (area-of-circle r)
  (* pi (sqr r)))


;(area-of-circle 5)

(define (area-of-ring outer inner)
  (- (area-of-circle outer)
     (area-of-circle inner)))


;(area-of-ring 5 3)

(define add-one (λ (x)(+ x 1))) 
;(add-one 6)

(define apply-twice
  (λ (add-one x)
    (add-one (add-one x))))

(apply-twice add-one 6)

(define Fahrenheit->Celsius (λ (f) (* (- f 32) (/ 5 9))))
(Fahrenheit->Celsius 100)


