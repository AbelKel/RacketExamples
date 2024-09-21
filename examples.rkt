#lang racket


(sqr 4)
(max 10 15)
(cos 0)

(sqrt 1)
(sqrt -1)

(define (area-of-circle r)
  (* pi (sqr r)))


;(area-of-circle 5)
;; area-of-ring : number number  ->  number
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


(define dollar-to-euro (λ (dollar) (* dollar 0.89)))


(dollar-to-euro 50)


(define traingle (λ (height length) (* (* height length) 0.5)))
(traingle 10 20)

(define convert (λ (x y z) (+ (* z 100) (* y 10) x)))
(convert 1 2 3)

(define PI 3.14)

(* PI 2)


