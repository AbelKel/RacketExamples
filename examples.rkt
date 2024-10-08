;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname examples) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;#lang racket


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
(add-one 6)

(define apply-twice
  (λ (f x)
    (f (f x))))

(apply-twice add-one 6)
;(apply-twice (lambda (n) (* 2 n)) 
  ;           10)


;;add_one = lambda x : x + 1
;;apply_twice = lambda x: add_one(add_one(x))
;;print(apply_twice(3))

;;; (define Fahrenheit->Celsius (λ (f) (* (- f 32) (/ 5 9))))
;;; (Fahrenheit->Celsius 100)


;;; (define dollar-to-euro (λ (dollar) (* dollar 0.89)))


;;; (dollar-to-euro 50)


;;; (define traingle (λ (height length) (* (* height length) 0.5)))
;;; (traingle 10 20)

;;; (define convert (λ (x y z) (+ (* z 100) (* y 10) x)))
;;; (convert 1 2 3)

;;; (define PI 3.14)

;;; (* PI 2)

;;; ;; CONSTANTS
;;; (define cm-per-inch 2.54)
;;; (define inches-per-foot 12)
;;; (define feet-per-yard 3)
;;; (define yards-per-rod (+ 5 1/2))
;;; (define rods-per-furlong 40)
;;; (define furlongs-per-mile 8)


;;; (define inches->cm (λ (inches) (* inches cm-per-inch)))

;;; ;;(inches->cm 1)

;;; (quote (2.1 2.2 3.1))
;;; (quote scheme)

;;; (define a 1)

;;; (if (= a 0) 0
;;;     (/ 1 a))

;;; (cond ((= a 0) 0)
;;;       ((= a 1) 1)
;;;       (else (/ 1 a)))



;;; ;;(λ (r) (* 3.14 (sqr r)))
;;; ;;((λ (r) (* 3.14 (sqr r)))10) ;; results in 314


;;; ;; non tail recursive
;;; (define factorial
;;;   (λ (n)
;;;     (if (= n 1)
;;;         1
;;;         (* n (factorial (- n 1))))))
;;; (eval (factorial 4))

;;; (define tail-factorial
;;;   (λ (n r)
;;;     (if (= n 1)
;;;         r
;;;         (tail-factorial (- n ) (* n r)))))

;;; ;;(tail-factorial 6 1)


;;; (define L (list 1 2 3))
;;; ;;(list 1 2 3)
;;; (cons 1 '(2 3))  ;; constructing a list 1 2 3


;;; (let ((a 2) (b 3))
;;;   (let ((a (+ a b)))
;;;   (+ a b))) ;; gives a value of 8

(define my-list '(1 2 3 4))
(car my-list)  ; returns 1
(cdr my-list) ; returns (2 3 4)
(cons 0 my-list)


(if (< 2 3) 4 5)


(let ((a 3)) (let ((a 4) (b a)) (+ a b)))

(define hypot
  (λ (a b)
    (sqrt ( + (* a a) (* b b)))))

(hypot 3 4)
;(cost 2 3) ;; this only works on beginner and intermediate


;; lazy evaluation function
(define double (lambda (x) (+ x x) ))

;; this lazy evalutation only works when we do advanced
;; racket learning and not beginner nor intermediate
;;(define f
 ;; (lambda ()
   ;; (let ((done #f)
      ;;    (memo '()) ;; creating an empty list
       ;;   (code (lambda () (* 3 4))))
   ;; (if done
    ;;    memo
     ;;   (begin ;;begin groups multiple expressions together so that they can be evaludated in sequence
          ;; it returns the last expression after evaluating each subexpression in order that come before the last expression
      ;;    (set! memo(code))
      ;;    (set! done #t)
       ;;   memo)))))

;;(double (f))







