;;;; random-access-lists.asd

(asdf:defsystem #:random-access-lists
 :serial t
 :author "David Van Horn"
 :version "0.0.1"
 :maintainer "Vincent Toups"
 :description "Persistent, random-access lists."
 :depends-on (#:lisp-unit)
 :components ((:file "package")
			  (:file "random-access-lists")))

