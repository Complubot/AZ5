;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::UserInfo)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'UserInfo (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::USERINFO")
  (make-package "REALSENSE_ROS_PERSON::USERINFO"))

(in-package "ROS")
;;//! \htmlinclude UserInfo.msg.html


(defclass realsense_ros_person::UserInfo
  :super ros::object
  :slots (_Id ))

(defmethod realsense_ros_person::UserInfo
  (:init
   (&key
    ((:Id __Id) 0)
    )
   (send-super :init)
   (setq _Id (round __Id))
   self)
  (:Id
   (&optional __Id)
   (if __Id (setq _Id __Id)) _Id)
  (:serialization-length
   ()
   (+
    ;; int32 _Id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Id
       (write-long _Id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Id
     (setq _Id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_person::UserInfo :md5sum-) "4c256f183ddb18ca1c8cac601691eb32")
(setf (get realsense_ros_person::UserInfo :datatype-) "realsense_ros_person/UserInfo")
(setf (get realsense_ros_person::UserInfo :definition-)
      "int32 Id

")



(provide :realsense_ros_person/UserInfo "4c256f183ddb18ca1c8cac601691eb32")


