(import (chezscheme)
        (atelier-kame test)
        (atelier-kame util))

(assert-equal (first '(a b)) 'a "expect a")
(assert-equal (second '(a b)) 'b "expect b")

(assert-equal (flatten '(1 (2) (3 (4)))) 
              '(1 2 3 4)
              "expect (1 2 3 4)")

(assert-equal (flatten
                '((1 2) (3 4)
                  (5 6) (7 8)))
                '(1 2 3 4 5 6 7 8)
                "expect (1 2 3 4 5 6 7 8)")

(display "OK\n")
