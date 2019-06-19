
(cl:in-package :asdf)

(defsystem "controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "buttons" :depends-on ("_package_buttons"))
    (:file "_package_buttons" :depends-on ("_package"))
    (:file "max_velocity" :depends-on ("_package_max_velocity"))
    (:file "_package_max_velocity" :depends-on ("_package"))
    (:file "raw_controller" :depends-on ("_package_raw_controller"))
    (:file "_package_raw_controller" :depends-on ("_package"))
    (:file "ultrasounds" :depends-on ("_package_ultrasounds"))
    (:file "_package_ultrasounds" :depends-on ("_package"))
  ))