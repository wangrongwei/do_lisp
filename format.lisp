; for lisp, the s-expression is the basic member for lisp, such as,
; (format t "hello") is a s-expression 
; defvar let/prog
(format t "Hello,world")
(defvar x 42)

(defconstant PI2 3.1415)

(defun area-func (rad)
    (format t "rad = ~f " rad)
    (format t "area =~f" (* PI2 rad rad)))

(area-func 10)

(quit)
