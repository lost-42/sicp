(newline)

(define (fib n)
  (cond((= n 0) 0)
    ((= n 1) 1)
    (else (+ (fib (- n 1))
	     (fib (- n 2))))))

(display (fib 8))

(define (fib2 n)
  (define (fib-iter a b c)
    (if (= c 0)
      a
      (fib-iter b (+ a b) (- c 1))))
  (fib-iter 0 1 n))

(newline)
(display (fib2 8))

(exit)
