
(cl:in-package :asdf)

(defsystem "controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "raw_controller" :depends-on ("_package_raw_controller"))
    (:file "_package_raw_controller" :depends-on ("_package"))
  ))