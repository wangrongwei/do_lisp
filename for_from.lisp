(do 
    ((x 0 (+ x 2)) 
        (y 20 (- y 2))) 
    ((= x y)(- x y)) 
    (format t "~% x=~d y=~d" x y))