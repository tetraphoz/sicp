#lang sicp

(define (square x) (* x x))
(define (sum-square a b) (+ (square a) (square b)))

(define (fun a b c)
 (cond
   ((and (>= a b) (>= c b)) (sum-square a c))
   ((and (>= b a) (>= c a)) (sum-square b c))
   (else  (sum-square a b))))

; Revision
(= (fun 10 10 10) (sum-square 10 10))
(= (fun 1 10 10) (sum-square 10 10))
(= (fun 10 1 10) (sum-square 10 10))
(= (fun 10 10 1) (sum-square 10 10))
(= (fun 1 10 100) (sum-square 10 100))
(= (fun 1 100 10) (sum-square 10 100))
(= (fun 10 1 100) (sum-square 10 100))
(= (fun 10 100 1) (sum-square 10 100))
(= (fun 100 10 1) (sum-square 10 100))
(= (fun 100 1 10) (sum-square 10 100))
