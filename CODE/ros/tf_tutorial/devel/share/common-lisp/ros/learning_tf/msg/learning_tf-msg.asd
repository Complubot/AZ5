
(cl:in-package :asdf)

(defsystem "learning_tf-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ultrasounds" :depends-on ("_package_ultrasounds"))
    (:file "_package_ultrasounds" :depends-on ("_package"))
  ))