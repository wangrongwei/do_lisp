
(if (member 1 '(2 3 4 6 8 1))
	'one-in-list
	'one-not-in-list)

; member function can tell us the what hecks after
; the first match number in the list 
(member 1 '(3 2 1 4 5))


; find-if function
(if (find-if #'oddp '(2 4 6 7))
	'exist-a-odd-number
	'no-odd-number)



