;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::User)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'User (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::USER")
  (make-package "REALSENSE_ROS_PERSON::USER"))

(in-package "ROS")
;;//! \htmlinclude User.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_ros_person::User
  :super ros::object
  :slots (_userInfo _centerOfMassImage _centerOfMassWorld _userRect _headBoundingBox _landmarksInfo _headPose _skeletonJoints _gestures ))

(defmethod realsense_ros_person::User
  (:init
   (&key
    ((:userInfo __userInfo) (instance realsense_ros_person::UserInfo :init))
    ((:centerOfMassImage __centerOfMassImage) (instance geometry_msgs::Point32 :init))
    ((:centerOfMassWorld __centerOfMassWorld) (instance geometry_msgs::Point32 :init))
    ((:userRect __userRect) (instance realsense_ros_person::RectWithConfidence :init))
    ((:headBoundingBox __headBoundingBox) (instance realsense_ros_person::RectWithConfidence :init))
    ((:landmarksInfo __landmarksInfo) (instance realsense_ros_person::LandmarksInfo :init))
    ((:headPose __headPose) (instance realsense_ros_person::EulerAnglesWithConfidence :init))
    ((:skeletonJoints __skeletonJoints) (let (r) (dotimes (i 0) (push (instance realsense_ros_person::SkeletonJoint :init) r)) r))
    ((:gestures __gestures) (instance realsense_ros_person::Gestures :init))
    )
   (send-super :init)
   (setq _userInfo __userInfo)
   (setq _centerOfMassImage __centerOfMassImage)
   (setq _centerOfMassWorld __centerOfMassWorld)
   (setq _userRect __userRect)
   (setq _headBoundingBox __headBoundingBox)
   (setq _landmarksInfo __landmarksInfo)
   (setq _headPose __headPose)
   (setq _skeletonJoints __skeletonJoints)
   (setq _gestures __gestures)
   self)
  (:userInfo
   (&rest __userInfo)
   (if (keywordp (car __userInfo))
       (send* _userInfo __userInfo)
     (progn
       (if __userInfo (setq _userInfo (car __userInfo)))
       _userInfo)))
  (:centerOfMassImage
   (&rest __centerOfMassImage)
   (if (keywordp (car __centerOfMassImage))
       (send* _centerOfMassImage __centerOfMassImage)
     (progn
       (if __centerOfMassImage (setq _centerOfMassImage (car __centerOfMassImage)))
       _centerOfMassImage)))
  (:centerOfMassWorld
   (&rest __centerOfMassWorld)
   (if (keywordp (car __centerOfMassWorld))
       (send* _centerOfMassWorld __centerOfMassWorld)
     (progn
       (if __centerOfMassWorld (setq _centerOfMassWorld (car __centerOfMassWorld)))
       _centerOfMassWorld)))
  (:userRect
   (&rest __userRect)
   (if (keywordp (car __userRect))
       (send* _userRect __userRect)
     (progn
       (if __userRect (setq _userRect (car __userRect)))
       _userRect)))
  (:headBoundingBox
   (&rest __headBoundingBox)
   (if (keywordp (car __headBoundingBox))
       (send* _headBoundingBox __headBoundingBox)
     (progn
       (if __headBoundingBox (setq _headBoundingBox (car __headBoundingBox)))
       _headBoundingBox)))
  (:landmarksInfo
   (&rest __landmarksInfo)
   (if (keywordp (car __landmarksInfo))
       (send* _landmarksInfo __landmarksInfo)
     (progn
       (if __landmarksInfo (setq _landmarksInfo (car __landmarksInfo)))
       _landmarksInfo)))
  (:headPose
   (&rest __headPose)
   (if (keywordp (car __headPose))
       (send* _headPose __headPose)
     (progn
       (if __headPose (setq _headPose (car __headPose)))
       _headPose)))
  (:skeletonJoints
   (&rest __skeletonJoints)
   (if (keywordp (car __skeletonJoints))
       (send* _skeletonJoints __skeletonJoints)
     (progn
       (if __skeletonJoints (setq _skeletonJoints (car __skeletonJoints)))
       _skeletonJoints)))
  (:gestures
   (&rest __gestures)
   (if (keywordp (car __gestures))
       (send* _gestures __gestures)
     (progn
       (if __gestures (setq _gestures (car __gestures)))
       _gestures)))
  (:serialization-length
   ()
   (+
    ;; realsense_ros_person/UserInfo _userInfo
    (send _userInfo :serialization-length)
    ;; geometry_msgs/Point32 _centerOfMassImage
    (send _centerOfMassImage :serialization-length)
    ;; geometry_msgs/Point32 _centerOfMassWorld
    (send _centerOfMassWorld :serialization-length)
    ;; realsense_ros_person/RectWithConfidence _userRect
    (send _userRect :serialization-length)
    ;; realsense_ros_person/RectWithConfidence _headBoundingBox
    (send _headBoundingBox :serialization-length)
    ;; realsense_ros_person/LandmarksInfo _landmarksInfo
    (send _landmarksInfo :serialization-length)
    ;; realsense_ros_person/EulerAnglesWithConfidence _headPose
    (send _headPose :serialization-length)
    ;; realsense_ros_person/SkeletonJoint[] _skeletonJoints
    (apply #'+ (send-all _skeletonJoints :serialization-length)) 4
    ;; realsense_ros_person/Gestures _gestures
    (send _gestures :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_ros_person/UserInfo _userInfo
       (send _userInfo :serialize s)
     ;; geometry_msgs/Point32 _centerOfMassImage
       (send _centerOfMassImage :serialize s)
     ;; geometry_msgs/Point32 _centerOfMassWorld
       (send _centerOfMassWorld :serialize s)
     ;; realsense_ros_person/RectWithConfidence _userRect
       (send _userRect :serialize s)
     ;; realsense_ros_person/RectWithConfidence _headBoundingBox
       (send _headBoundingBox :serialize s)
     ;; realsense_ros_person/LandmarksInfo _landmarksInfo
       (send _landmarksInfo :serialize s)
     ;; realsense_ros_person/EulerAnglesWithConfidence _headPose
       (send _headPose :serialize s)
     ;; realsense_ros_person/SkeletonJoint[] _skeletonJoints
     (write-long (length _skeletonJoints) s)
     (dolist (elem _skeletonJoints)
       (send elem :serialize s)
       )
     ;; realsense_ros_person/Gestures _gestures
       (send _gestures :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_ros_person/UserInfo _userInfo
     (send _userInfo :deserialize buf ptr-) (incf ptr- (send _userInfo :serialization-length))
   ;; geometry_msgs/Point32 _centerOfMassImage
     (send _centerOfMassImage :deserialize buf ptr-) (incf ptr- (send _centerOfMassImage :serialization-length))
   ;; geometry_msgs/Point32 _centerOfMassWorld
     (send _centerOfMassWorld :deserialize buf ptr-) (incf ptr- (send _centerOfMassWorld :serialization-length))
   ;; realsense_ros_person/RectWithConfidence _userRect
     (send _userRect :deserialize buf ptr-) (incf ptr- (send _userRect :serialization-length))
   ;; realsense_ros_person/RectWithConfidence _headBoundingBox
     (send _headBoundingBox :deserialize buf ptr-) (incf ptr- (send _headBoundingBox :serialization-length))
   ;; realsense_ros_person/LandmarksInfo _landmarksInfo
     (send _landmarksInfo :deserialize buf ptr-) (incf ptr- (send _landmarksInfo :serialization-length))
   ;; realsense_ros_person/EulerAnglesWithConfidence _headPose
     (send _headPose :deserialize buf ptr-) (incf ptr- (send _headPose :serialization-length))
   ;; realsense_ros_person/SkeletonJoint[] _skeletonJoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _skeletonJoints (let (r) (dotimes (i n) (push (instance realsense_ros_person::SkeletonJoint :init) r)) r))
     (dolist (elem- _skeletonJoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; realsense_ros_person/Gestures _gestures
     (send _gestures :deserialize buf ptr-) (incf ptr- (send _gestures :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_person::User :md5sum-) "6686a133e9edf3243aaa058301a3c9c6")
(setf (get realsense_ros_person::User :datatype-) "realsense_ros_person/User")
(setf (get realsense_ros_person::User :definition-)
      "UserInfo userInfo
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



(provide :realsense_ros_person/User "6686a133e9edf3243aaa058301a3c9c6")


