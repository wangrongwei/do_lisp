(setq a 0)
(setq b 1)
(print a) 
(dotimes (n 11) (print (+ a b)) (setq b (+ b a)) (setq a (- b a)))