
; io function, open a txt file
(with-open-file (stream "D:\\lisp.txt" :direction :output)
	(format stream "Welcome to lisp!~%")
	(format stream "hhhh"))

