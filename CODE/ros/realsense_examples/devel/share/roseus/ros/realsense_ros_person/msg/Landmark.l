;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Landmark)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Landmark (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::LANDMARK")
  (make-package "REALSENSE_ROS_PERSON::LANDMARK"))

(in-package "ROS")
;;//! \htmlinclude Landmark.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_ros_person::Landmark
  :super ros::object
  :slots (_location _realWorldCoordinates ))

(defmethod realsense_ros_person::Landmark
  (:init
   (&key
    ((:location __location) (instance geometry_msgs::Point :init))
    ((:realWorldCoordinates __realWorldCoordinates) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _location __location)
   (setq _realWorldCoordinates __realWorldCoordinates)
   self)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:realWorldCoordinates
   (&rest __realWorldCoordinates)
   (if (keywordp (car __realWorldCoordinates))
       (send* _realWorldCoordinates __realWorldCoordinates)
     (progn
       (if __realWorldCoordinates (setq _realWorldCoordinates (car __realWorldCoordinates)))
       _realWorldCoordinates)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _location
    (send _location :serialization-length)
    ;; geometry_msgs/Point32 _realWorldCoordinates
    (send _realWorldCoordinates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _location
       (send _location :serialize s)
     ;; geometry_msgs/Point32 _realWorldCoordinates
       (send _realWorldCoordinates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; geometry_msgs/Point32 _realWorldCoordinates
     (send _realWorldCoordinates :deserialize buf ptr-) (incf ptr- (send _realWorldCoordinates :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_person::Landmark :md5sum-) "40b8559cad6d27176fd0a970412b03f0")
(setf (get realsense_ros_person::Landmark :datatype-) "realsense_ros_person/Landmark")
(setf (get realsense_ros_person::Landmark :definition-)
      "geometry_msgs/Point location
geometry_msgs/Point32 realWorldCoordinates

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
")



(provide :realsense_ros_person/Landmark "40b8559cad6d27176fd0a970412b03f0")


