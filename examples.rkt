#lang racket


;;(sqr 4)
;;(max 10 15)
;;(cos 0)

;;sqrt 1)
;;(sqrt -1)

(define (area-of-circle r)
  (* pi (sqr r)))


;;; ;(area-of-circle 5)
;; area-of-ring : number number  ->  number
(define (area-of-ring outer inner)
  (- (area-of-circle outer)
     (area-of-circle inner)))


(area-of-ring 5 3)

(define add-one (λ (x)(+ x 1))) 
;(add-one 6)

(define apply-twice
  (λ (add-one x)
    (add-one (add-one x))))

(apply-twice add-one 6)

;;add_one = lambda x : x + 1
;;apply_twice = lambda x: add_one(add_one(x))
;;print(apply_twice(3))

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

;; CONSTANTS
(define cm-per-inch 2.54)
(define inches-per-foot 12)
(define feet-per-yard 3)
(define yards-per-rod (+ 5 1/2))
(define rods-per-furlong 40)
(define furlongs-per-mile 8)


(define inches->cm (λ (inches) (* inches cm-per-inch)))

;;(inches->cm 1)

(quote (2.1 2.2 3.1))
(quote scheme)

(define a 1)

(if (= a 0) 0
    (/ 1 a))

(cond ((= a 0) 0)
      ((= a 1) 1)
      (else (/ 1 a)))



;;(λ (r) (* 3.14 (sqr r)))
;;((λ (r) (* 3.14 (sqr r)))10) ;; results in 314


;; non tail recursive
(define factorial
  (λ (n)
    (if (= n 1)
        1
        (* n (factorial (- n 1))))))
(eval (factorial 4))

(define tail-factorial
  (λ (n r)
    (if (= n 1)
        r
        (tail-factorial (- n ) (* n r)))))

;;(tail-factorial 6 1)


(define L (list 1 2 3))
;;(list 1 2 3)
(cons 1 '(2 3))  ;; constructing a list 1 2 3


(let ((a 2) (b 3))
  (let ((a (+ a b)))
  (+ a b))) ;; gives a value of 8

(define my-list '(1 2 3 4))
(car my-list)  ; returns 1
(cdr my-list)


