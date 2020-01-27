;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::UI)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'UI (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::UI")
  (make-package "REALSENSE_ROS_OBJECT::UI"))

(in-package "ROS")
;;//! \htmlinclude UI.msg.html


(defclass realsense_ros_object::UI
  :super ros::object
  :slots (_key ))

(defmethod realsense_ros_object::UI
  (:init
   (&key
    ((:key __key) 0)
    )
   (send-super :init)
   (setq _key (round __key))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; int32 _key
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _key
       (write-long _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _key
     (setq _key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_object::UI :md5sum-) "d5f7d6b16cb4e9d7a81b607f04247968")
(setf (get realsense_ros_object::UI :datatype-) "realsense_ros_object/UI")
(setf (get realsense_ros_object::UI :definition-)
      "int32 key

")



(provide :realsense_ros_object/UI "d5f7d6b16cb4e9d7a81b607f04247968")


