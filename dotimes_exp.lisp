(dotimes (n 12) (print n) (prin1 (* n n)))
(dolist (n '(1 2 3 4 5 6))
	(format t "~% Number:~d Square:~d" n (* n n)))