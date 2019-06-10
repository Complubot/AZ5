
(cl:in-package :asdf)

(defsystem "client_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "calculate" :depends-on ("_package_calculate"))
    (:file "_package_calculate" :depends-on ("_package"))
  ))