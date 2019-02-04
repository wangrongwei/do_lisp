;
; verbose func's test, and study vector
;
(defparameter *v* #((a 10) (b 20) (a 30) (b 40)))

(defun verbose-first (x) (format t "Looking at ~s~%" x) (first x))


(count 'a *v* :key #'verbose-first)



