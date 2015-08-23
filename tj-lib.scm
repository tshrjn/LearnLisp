; Lisp Math-Library made by Tushar Jain

(define (square x) (* x x))

(define(abs x)
	(if(< x 0)
		(- x)
		x
	)
)

;; Absolute
(define (>= x y)
	(or (< x y) (= x y)))
(define (<= x y)
	(not (> x y)))

;; Iterative Square - root
(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))
(define (improve guess x)
	(average guess (/ x guess)))
(define (average x y)
	(/ (+ x y) 2))
(define (good-enough? guess x)
	(< (abs ( - (square guess) x)) 0.00001)))
(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 9)

(sqrt 137)

(sqrt 0.09)
(square (sqrt 1000))