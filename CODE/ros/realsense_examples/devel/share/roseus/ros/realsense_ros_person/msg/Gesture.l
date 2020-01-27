;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Gesture)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Gesture (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::GESTURE")
  (make-package "REALSENSE_ROS_PERSON::GESTURE"))

(in-package "ROS")
;;//! \htmlinclude Gesture.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_ros_person::Gesture
  :super ros::object
  :slots (_type _vectorOrigin _pointingVector ))

(defmethod realsense_ros_person::Gesture
  (:init
   (&key
    ((:type __type) 0)
    ((:vectorOrigin __vectorOrigin) (instance geometry_msgs::Point32 :init))
    ((:pointingVector __pointingVector) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _vectorOrigin __vectorOrigin)
   (setq _pointingVector __pointingVector)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:vectorOrigin
   (&rest __vectorOrigin)
   (if (keywordp (car __vectorOrigin))
       (send* _vectorOrigin __vectorOrigin)
     (progn
       (if __vectorOrigin (setq _vectorOrigin (car __vectorOrigin)))
       _vectorOrigin)))
  (:pointingVector
   (&rest __pointingVector)
   (if (keywordp (car __pointingVector))
       (send* _pointingVector __pointingVector)
     (progn
       (if __pointingVector (setq _pointingVector (car __pointingVector)))
       _pointingVector)))
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; geometry_msgs/Point32 _vectorOrigin
    (send _vectorOrigin :serialization-length)
    ;; geometry_msgs/Vector3 _pointingVector
    (send _pointingVector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; geometry_msgs/Point32 _vectorOrigin
       (send _vectorOrigin :serialize s)
     ;; geometry_msgs/Vector3 _pointingVector
       (send _pointingVector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _vectorOrigin
     (send _vectorOrigin :deserialize buf ptr-) (incf ptr- (send _vectorOrigin :serialization-length))
   ;; geometry_msgs/Vector3 _pointingVector
     (send _pointingVector :deserialize buf ptr-) (incf ptr- (send _pointingVector :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_person::Gesture :md5sum-) "d46ba8b59c5b03a022b488e568706275")
(setf (get realsense_ros_person::Gesture :datatype-) "realsense_ros_person/Gesture")
(setf (get realsense_ros_person::Gesture :definition-)
      "int32 type
geometry_msgs/Point32 vectorOrigin
geometry_msgs/Vector3 pointingVector
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :realsense_ros_person/Gesture "d46ba8b59c5b03a022b488e568706275")


