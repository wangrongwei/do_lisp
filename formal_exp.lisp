
(defun riddle ()
	(if (yes-or-no-p 
			"Do you seek Zen Enlightenment?")
		(format t "Then do not ask for it!")
		(format t "You have found it.")))


(riddle)




