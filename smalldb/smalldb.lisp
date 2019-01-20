;
; a simple Data library
;

(defvar *db* nil)

(defun make-cd (title artist rating ripped)
	(list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*))
(defun dump-db () 
	(dolist (cd *db*)
		(format t "~{~a: ~10t~a~%~}~%" cd)))



;(add-record (make-cd "Roses" "Kathy Mattea" 7 t))
;(add-record (make-cd "Fly" "Dixie Chicks" 8 t))
;(add-record (make-cd "Home" "Dixie Chicks" 9 t))


; design a io make user input their CD information
(defun prompt-read (prompt)
	(format *query-io* "~a:" prompt)
	(force-output *query-io*)
	(read-line *query-io*))

(defun prompt-for-cd ()
	(add-record
		(make-cd
			(prompt-read "Title")
			(prompt-read "Artist")
			(or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)
			(y-or-n-p "Ripped [y/n] : "))))

(defun add-ads ()
	(loop (add-record (prompt-for-cd))
		(if (not (y-or-n-p "Another? [y/n]: ")) (return))))


;function: save cd's data to file
(defun save-db (filename)
	(with-open-file (out filename
					:direction :output
					:if-exists :supersede)
		(with-standard-io-syntax
			(print *db* out))))

; load data of cd from file
; Note: if you *db* has other data before load operation, and 
; 		you must save those data.
(defun load-db (filename)
	(with-open-file (in filename)
		(with-standard-io-syntax
			(setf *db* (read in)))))


; acquare  a information by artist 
(defun select-by-artist (artist)
	(remove-if-not
	#'(lambda (cd) (equal (getf cd :artist) artist)) *db*))

; a usual func 
(defun select (selector-fn)
	(remove-if-not selector-fn *db*))

; rewrite some func to a usual style
(defun artist-selector (artist)
	#'(lambda (cd) (equal (getf cd :artist) artist)))
(defun title-selector (title)
	#'(lambda (cd) (equal (getf cd :title) title)))

; more usual function
(defun where (&key title artist rating (ripped nil ripped-p))
	#'(lambda (cd)
		(and 
			(if title (equal (getf cd :title) title) t)
			(if artist (equal (getf cd :artist) artist) t)
			(if rating (equal (getf cd :rating) rating) t)
			(if ripped-p (equal (getf cd :ripped) ripped) t))))

; update function
(defun update (selector-fn &key title artist rating (ripped nil ripped-p))
	(setf *db*
		(mapcar 
			#'(lambda (row)
				(when (funcall selector-fn row)
					(if title (setf (getf row :title) title))
					(if artist (setf (getf row :artist) artist))
					(if rating (setf (getf row :rating) rating))
					(if ripped-p (setf (getf row :ripped) ripped)))
					row) *db*)))




