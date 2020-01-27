;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::LandmarksInfo)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'LandmarksInfo (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::LANDMARKSINFO")
  (make-package "REALSENSE_ROS_PERSON::LANDMARKSINFO"))

(in-package "ROS")
;;//! \htmlinclude LandmarksInfo.msg.html


(defclass realsense_ros_person::LandmarksInfo
  :super ros::object
  :slots (_confidence _landmarks ))

(defmethod realsense_ros_person::LandmarksInfo
  (:init
   (&key
    ((:confidence __confidence) 0)
    ((:landmarks __landmarks) (let (r) (dotimes (i 0) (push (instance realsense_ros_person::Landmark :init) r)) r))
    )
   (send-super :init)
   (setq _confidence (round __confidence))
   (setq _landmarks __landmarks)
   self)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:serialization-length
   ()
   (+
    ;; int32 _confidence
    4
    ;; realsense_ros_person/Landmark[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _confidence
       (write-long _confidence s)
     ;; realsense_ros_person/Landmark[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _confidence
     (setq _confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; realsense_ros_person/Landmark[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance realsense_ros_person::Landmark :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realsense_ros_person::LandmarksInfo :md5sum-) "b88fb5d4a75fae4bfffdb6477b2b15a7")
(setf (get realsense_ros_person::LandmarksInfo :datatype-) "realsense_ros_person/LandmarksInfo")
(setf (get realsense_ros_person::LandmarksInfo :definition-)
      "int32 confidence
Landmark[] landmarks

================================================================================
MSG: realsense_ros_person/Landmark
geometry_msgs/Point location
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



(provide :realsense_ros_person/LandmarksInfo "b88fb5d4a75fae4bfffdb6477b2b15a7")


