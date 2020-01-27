
(cl:in-package :asdf)

(defsystem "realsense_ros_slam-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Reset" :depends-on ("_package_Reset"))
    (:file "_package_Reset" :depends-on ("_package"))
    (:file "SaveOutput" :depends-on ("_package_SaveOutput"))
    (:file "_package_SaveOutput" :depends-on ("_package"))
  ))