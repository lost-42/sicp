;; Newton's method to calculate square root

(newline)

(define (abs x)
  (if (>= x 0)
    x
    (- x)))

(define (sq x) (* x x))

(define (avg x y) (/ (+ x y) 2))

(define (good-enough? x y)
  (<= (abs (- x (sq y))) 1e-6))

(define (nsqrt-impl x y)
  (if (good-enough? x y)
    y
    (nsqrt-impl x (avg y (/ x y)))))

(define (nsqrt x) (nsqrt-impl x 1.0))

(display (nsqrt 2))

(exit)
