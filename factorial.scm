(newline)

(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(display (factorial 8))

(define (factorial2 n)
  (define (fact-iter i n p)
    (if (<= i n)
      (fact-iter (+ i 1)
		 n
		 (* i p))
      p))
  (fact-iter 1 n 1))

(newline)
(display (factorial2 8))

(exit)
