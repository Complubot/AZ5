;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Frame)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Frame (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::FRAME")
  (make-package "REALSENSE_ROS_PERSON::FRAME"))

(in-package "ROS")
;;//! \htmlinclude Frame.msg.html


(defclass realsense_ros_person::Frame
  :super ros::object
  :slots (_numberOfUsers _usersData ))

(defmethod realsense_ros_person::Frame
  (:init
   (&key
    ((:numberOfUsers __numberOfUsers) 0)
    ((:usersData __usersData) (let (r) (dotimes (i 0) (push (instance realsense_ros_person::User :init) r)) r))
    )
   (send-super :init)
   (setq _numberOfUsers (round __numberOfUsers))
   (setq _usersData __usersData)
   self)
  (:numberOfUsers
   (&optional __numberOfUsers)
   (if __numberOfUsers (setq _numberOfUsers __numberOfUsers)) _numberOfUsers)
  (:usersData
   (&rest __usersData)
   (if (keywordp (car __usersData))
       (send* _usersData __usersData)
     (progn
       (if __usersData (setq _usersData (car __usersData)))
       _usersData)))
  (:serialization-length
   ()
   (+
    ;; int32 _numberOfUsers
    4
    ;; realsense_ros_person/User[] _usersData
    (apply #'+ (send-all _usersData :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _numberOfUsers
       (write-long _numberOfUsers s)
     ;; realsense_ros_person/User[] _usersData
     (write-long (length _usersData) s)
     (dolist (elem _usersData)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _numberOfUsers
     (setq _numberOfUsers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; realsense_ros_person/User[] _usersData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _usersData (let (r) (dotimes (i n) (push (instance realsense_ros_person::User :init) r)) r))
     (dolist (elem- _usersData)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realsense_ros_person::Frame :md5sum-) "0fc1584508d060a88fda97d4fdfd469b")
(setf (get realsense_ros_person::Frame :datatype-) "realsense_ros_person/Frame")
(setf (get realsense_ros_person::Frame :definition-)
      "int32 numberOfUsers
User[] usersData

================================================================================
MSG: realsense_ros_person/User
UserInfo userInfo
geometry_msgs/Point32 centerOfMassImage
geometry_msgs/Point32 centerOfMassWorld
RectWithConfidence userRect
RectWithConfidence headBoundingBox
LandmarksInfo landmarksInfo
EulerAnglesWithConfidence headPose
SkeletonJoint[] skeletonJoints
Gestures gestures


================================================================================
MSG: realsense_ros_person/UserInfo
int32 Id

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
MSG: realsense_ros_person/RectWithConfidence
int32 confidence
geometry_msgs/Point32[2] rectCorners

================================================================================
MSG: realsense_ros_person/LandmarksInfo
int32 confidence
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
MSG: realsense_ros_person/EulerAnglesWithConfidence
EulerAngles angles
int32 confidence

================================================================================
MSG: realsense_ros_person/EulerAngles
float32 pitch
float32 roll
float32 yaw

================================================================================
MSG: realsense_ros_person/SkeletonJoint
int32 type
float32 confidence
geometry_msgs/Point location
geometry_msgs/Point32 realWorldCoordinates

#joint types constants
int32 JOINT_ANKLE_LEFT=0
int32 JOINT_ANKLE_RIGHT=1
int32 JOINT_ELBOW_LEFT=2
int32 JOINT_ELBOW_RIGHT=3
int32 JOINT_FOOT_LEFT=4
int32 JOINT_FOOT_RIGHT=5
int32 JOINT_HAND_LEFT=6
int32 JOINT_HAND_RIGHT=7
int32 JOINT_HAND_TIP_LEFT=8
int32 JOINT_HAND_TIP_RIGHT=9
int32 JOINT_HEAD=10
int32 JOINT_HIP_LEFT=11
int32 JOINT_HIP_RIGHT=12
int32 JOINT_KNEE_LEFT=13
int32 JOINT_KNEE_RIGHT=14
int32 JOINT_NECK=15
int32 JOINT_SHOULDER_LEFT=16
int32 JOINT_SHOULDER_RIGHT=17
int32 JOINT_SPINE_BASE=18
int32 JOINT_SPINE_MID=19
int32 JOINT_SPINE_SHOULDER=20
int32 JOINT_THUMB_LEFT=21
int32 JOINT_THUMB_RIGHT=22
int32 JOINT_WRIST_LEFT=23
int32 JOINT_WRIST_RIGHT=24
int32 JOINT_UNKNOWN=25

================================================================================
MSG: realsense_ros_person/Gestures
Pointing pointing
Wave wave

================================================================================
MSG: realsense_ros_person/Pointing
int32 confidence
geometry_msgs/Point32 originColor
geometry_msgs/Point32 originWorld
geometry_msgs/Point32 orientationColor
geometry_msgs/Vector3 orientationWorld

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



(provide :realsense_ros_person/Frame "0fc1584508d060a88fda97d4fdfd469b")


