;;;; random-access-lists.asd

(asdf:defsystem #:random-access-lists
  :serial t
  :depends-on (#:lisp-unit)
  :components ((:file "package")
               (:file "random-access-lists")))

