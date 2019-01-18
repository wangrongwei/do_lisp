(defstruct book
	title
	author
	subject
	book-id
)

(setq book1 (make-book :title "C++" :author "Nuha" :subject "C-Primer" :book-id "478"))
(write book1)


