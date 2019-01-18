(setq emplist (make-hash-table))

(setf (gethash '001 emplist) '(Charlie Brown))

(setf (gethash '002 emplist) '(m j))

;(remhash '001 emplist)

;(write (gethash '001 emplist))
(maphash #'(lambda (k v) (format t "~a => ~a~%" k v)) emplist)


