
(defvar *arch-enemy* nil)

(defun pudding-eater (person)
	(cond ((eq person 'henry) (setf *arch-enemy* 'stupid-lisp)
									'(curse your lisp alien - you ate my pudding))
			((eq person 'mj) (setf *arch-enemy* 'buf-mj) '(i maybe love you))
			(t '(why you ?))))

(defvar *animal* nil)

(defun pudding-and-eater (person)
	(case person
		((catt) (setf *animal* 'cat) '(please input a animal))
		((dogg) (setf *animal* 'dog))
		((pigg) (setf *animal* 'pig))
		(otherwise '(ok last1))))






