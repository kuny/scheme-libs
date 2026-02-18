(library (atelier-kame test)
  (export assert-equal)
  (import (chezscheme))

  (define (assert-equal a b msg)
    (unless (equal? a b)
      (error msg a b))))



