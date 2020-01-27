
(cl:in-package :asdf)

(defsystem "realsense_ros_slam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TrackingAccuracy" :depends-on ("_package_TrackingAccuracy"))
    (:file "_package_TrackingAccuracy" :depends-on ("_package"))
  ))