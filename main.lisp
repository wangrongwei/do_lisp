(loop for x in '(tom dick harry)
	do (format t " ~s" x)
)
(loop for a from 10 to 20
	if(evenp a) do (print a)
)