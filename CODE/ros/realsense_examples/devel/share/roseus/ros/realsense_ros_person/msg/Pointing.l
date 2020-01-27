;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Pointing)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Pointing (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::POINTING")
  (make-package "REALSENSE_ROS_PERSON::POINTING"))

(in-package "ROS")
;;//! \htmlinclude Pointing.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_ros_person::Pointing
  :super ros::object
  :slots (_confidence _originColor _originWorld _orientationColor _orientationWorld ))

(defmethod realsense_ros_person::Pointing
  (:init
   (&key
    ((:confidence __confidence) 0)
    ((:originColor __originColor) (instance geometry_msgs::Point32 :init))
    ((:originWorld __originWorld) (instance geometry_msgs::Point32 :init))
    ((:orientationColor __orientationColor) (instance geometry_msgs::Point32 :init))
    ((:orientationWorld __orientationWorld) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _confidence (round __confidence))
   (setq _originColor __originColor)
   (setq _originWorld __originWorld)
   (setq _orientationColor __orientationColor)
   (setq _orientationWorld __orientationWorld)
   self)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:originColor
   (&rest __originColor)
   (if (keywordp (car __originColor))
       (send* _originColor __originColor)
     (progn
       (if __originColor (setq _originColor (car __originColor)))
       _originColor)))
  (:originWorld
   (&rest __originWorld)
   (if (keywordp (car __originWorld))
       (send* _originWorld __originWorld)
     (progn
       (if __originWorld (setq _originWorld (car __originWorld)))
       _originWorld)))
  (:orientationColor
   (&rest __orientationColor)
   (if (keywordp (car __orientationColor))
       (send* _orientationColor __orientationColor)
     (progn
       (if __orientationColor (setq _orientationColor (car __orientationColor)))
       _orientationColor)))
  (:orientationWorld
   (&rest __orientationWorld)
   (if (keywordp (car __orientationWorld))
       (send* _orientationWorld __orientationWorld)
     (progn
       (if __orientationWorld (setq _orientationWorld (car __orientationWorld)))
       _orientationWorld)))
  (:serialization-length
   ()
   (+
    ;; int32 _confidence
    4
    ;; geometry_msgs/Point32 _originColor
    (send _originColor :serialization-length)
    ;; geometry_msgs/Point32 _originWorld
    (send _originWorld :serialization-length)
    ;; geometry_msgs/Point32 _orientationColor
    (send _orientationColor :serialization-length)
    ;; geometry_msgs/Vector3 _orientationWorld
    (send _orientationWorld :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _confidence
       (write-long _confidence s)
     ;; geometry_msgs/Point32 _originColor
       (send _originColor :serialize s)
     ;; geometry_msgs/Point32 _originWorld
       (send _originWorld :serialize s)
     ;; geometry_msgs/Point32 _orientationColor
       (send _orientationColor :serialize s)
     ;; geometry_msgs/Vector3 _orientationWorld
       (send _orientationWorld :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _confidence
     (setq _confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _originColor
     (send _originColor :deserialize buf ptr-) (incf ptr- (send _originColor :serialization-length))
   ;; geometry_msgs/Point32 _originWorld
     (send _originWorld :deserialize buf ptr-) (incf ptr- (send _originWorld :serialization-length))
   ;; geometry_msgs/Point32 _orientationColor
     (send _orientationColor :deserialize buf ptr-) (incf ptr- (send _orientationColor :serialization-length))
   ;; geometry_msgs/Vector3 _orientationWorld
     (send _orientationWorld :deserialize buf ptr-) (incf ptr- (send _orientationWorld :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_person::Pointing :md5sum-) "e8e17bba059ae94c10bd49b0a03744e0")
(setf (get realsense_ros_person::Pointing :datatype-) "realsense_ros_person/Pointing")
(setf (get realsense_ros_person::Pointing :definition-)
      "int32 confidence
geometry_msgs/Point32 originColor
geometry_msgs/Point32 originWorld
geometry_msgs/Point32 orientationColor
geometry_msgs/Vector3 orientationWorld

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



(provide :realsense_ros_person/Pointing "e8e17bba059ae94c10bd49b0a03744e0")


