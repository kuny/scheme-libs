(library (atelier-kame util)
  (export 
    first 
    second 
    concat 
    flatten
    pow)
  (import (chezscheme))

  (define (first lst)
    (car lst))

  (define (second lst)
    (car (cdr lst)))

  (define (concat . strings)
    (apply string-append strings))

  (define (flatten x)
    (let rec ((x x) (acc '()))
      (cond ((null? x) acc)
            ((atom? x) (cons x acc))
            (else (rec
                    (car x)
                    (rec (cdr x) acc))))))

  (define (pow base exp)
    (expt base exp))
#|
  (define (round+ mode d place)
    (let* ((a (pow 10 place))
           (add-values '((off . 0.5) (up . 0.9) (down . 0) (halfup . 0.5)))
           (offset (assoc-ref add-values mode 0)))
      (if (equal? mode 'bank)
        (/ (floor (round (* d a))) a)
        (/ (floor (+ (* d a) offset)) a))))
|#


  )

