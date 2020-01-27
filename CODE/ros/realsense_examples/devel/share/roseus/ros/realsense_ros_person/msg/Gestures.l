;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Gestures)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Gestures (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::GESTURES")
  (make-package "REALSENSE_ROS_PERSON::GESTURES"))

(in-package "ROS")
;;//! \htmlinclude Gestures.msg.html


(defclass realsense_ros_person::Gestures
  :super ros::object
  :slots (_pointing _wave ))

(defmethod realsense_ros_person::Gestures
  (:init
   (&key
    ((:pointing __pointing) (instance realsense_ros_person::Pointing :init))
    ((:wave __wave) (instance realsense_ros_person::Wave :init))
    )
   (send-super :init)
   (setq _pointing __pointing)
   (setq _wave __wave)
   self)
  (:pointing
   (&rest __pointing)
   (if (keywordp (car __pointing))
       (send* _pointing __pointing)
     (progn
       (if __pointing (setq _pointing (car __pointing)))
       _pointing)))
  (:wave
   (&rest __wave)
   (if (keywordp (car __wave))
       (send* _wave __wave)
     (progn
       (if __wave (setq _wave (car __wave)))
       _wave)))
  (:serialization-length
   ()
   (+
    ;; realsense_ros_person/Pointing _pointing
    (send _pointing :serialization-length)
    ;; realsense_ros_person/Wave _wave
    (send _wave :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_ros_person/Pointing _pointing
       (send _pointing :serialize s)
     ;; realsense_ros_person/Wave _wave
       (send _wave :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_ros_person/Pointing _pointing
     (send _pointing :deserialize buf ptr-) (incf ptr- (send _pointing :serialization-length))
   ;; realsense_ros_person/Wave _wave
     (send _wave :deserialize buf ptr-) (incf ptr- (send _wave :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_person::Gestures :md5sum-) "d3676ee03e8d847bc8d129f9b683163e")
(setf (get realsense_ros_person::Gestures :datatype-) "realsense_ros_person/Gestures")
(setf (get realsense_ros_person::Gestures :definition-)
      "Pointing pointing
Wave wave

================================================================================
MSG: realsense_ros_person/Pointing
int32 confidence
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
================================================================================
MSG: realsense_ros_person/Wave
int32 type

#Wave gesture types
int32 WAVE_NOT_DETECTED=-1 # Wave not detected 
int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area
int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area
int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area
int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area


")



(provide :realsense_ros_person/Gestures "d3676ee03e8d847bc8d129f9b683163e")


