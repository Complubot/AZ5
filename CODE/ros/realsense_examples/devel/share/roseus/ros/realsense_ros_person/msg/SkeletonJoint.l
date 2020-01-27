;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::SkeletonJoint)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'SkeletonJoint (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT")
  (make-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))

(in-package "ROS")
;;//! \htmlinclude SkeletonJoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*JOINT_ANKLE_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_ANKLE_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_ANKLE_LEFT* 0)
(intern "*JOINT_ANKLE_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_ANKLE_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_ANKLE_RIGHT* 1)
(intern "*JOINT_ELBOW_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_ELBOW_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_ELBOW_LEFT* 2)
(intern "*JOINT_ELBOW_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_ELBOW_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_ELBOW_RIGHT* 3)
(intern "*JOINT_FOOT_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_FOOT_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_FOOT_LEFT* 4)
(intern "*JOINT_FOOT_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_FOOT_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_FOOT_RIGHT* 5)
(intern "*JOINT_HAND_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HAND_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HAND_LEFT* 6)
(intern "*JOINT_HAND_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HAND_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HAND_RIGHT* 7)
(intern "*JOINT_HAND_TIP_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HAND_TIP_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HAND_TIP_LEFT* 8)
(intern "*JOINT_HAND_TIP_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HAND_TIP_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HAND_TIP_RIGHT* 9)
(intern "*JOINT_HEAD*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HEAD* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HEAD* 10)
(intern "*JOINT_HIP_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HIP_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HIP_LEFT* 11)
(intern "*JOINT_HIP_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_HIP_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_HIP_RIGHT* 12)
(intern "*JOINT_KNEE_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_KNEE_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_KNEE_LEFT* 13)
(intern "*JOINT_KNEE_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_KNEE_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_KNEE_RIGHT* 14)
(intern "*JOINT_NECK*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_NECK* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_NECK* 15)
(intern "*JOINT_SHOULDER_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_SHOULDER_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_SHOULDER_LEFT* 16)
(intern "*JOINT_SHOULDER_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_SHOULDER_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_SHOULDER_RIGHT* 17)
(intern "*JOINT_SPINE_BASE*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_SPINE_BASE* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_SPINE_BASE* 18)
(intern "*JOINT_SPINE_MID*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_SPINE_MID* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_SPINE_MID* 19)
(intern "*JOINT_SPINE_SHOULDER*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_SPINE_SHOULDER* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_SPINE_SHOULDER* 20)
(intern "*JOINT_THUMB_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_THUMB_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_THUMB_LEFT* 21)
(intern "*JOINT_THUMB_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_THUMB_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_THUMB_RIGHT* 22)
(intern "*JOINT_WRIST_LEFT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_WRIST_LEFT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_WRIST_LEFT* 23)
(intern "*JOINT_WRIST_RIGHT*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_WRIST_RIGHT* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_WRIST_RIGHT* 24)
(intern "*JOINT_UNKNOWN*" (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(shadow '*JOINT_UNKNOWN* (find-package "REALSENSE_ROS_PERSON::SKELETONJOINT"))
(defconstant realsense_ros_person::SkeletonJoint::*JOINT_UNKNOWN* 25)
(defclass realsense_ros_person::SkeletonJoint
  :super ros::object
  :slots (_type _confidence _location _realWorldCoordinates ))

(defmethod realsense_ros_person::SkeletonJoint
  (:init
   (&key
    ((:type __type) 0)
    ((:confidence __confidence) 0.0)
    ((:location __location) (instance geometry_msgs::Point :init))
    ((:realWorldCoordinates __realWorldCoordinates) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _confidence (float __confidence))
   (setq _location __location)
   (setq _realWorldCoordinates __realWorldCoordinates)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
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
    ;; int32 _type
    4
    ;; float32 _confidence
    4
    ;; geometry_msgs/Point _location
    (send _location :serialization-length)
    ;; geometry_msgs/Point32 _realWorldCoordinates
    (send _realWorldCoordinates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _location
       (send _location :serialize s)
     ;; geometry_msgs/Point32 _realWorldCoordinates
       (send _realWorldCoordinates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; geometry_msgs/Point32 _realWorldCoordinates
     (send _realWorldCoordinates :deserialize buf ptr-) (incf ptr- (send _realWorldCoordinates :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_person::SkeletonJoint :md5sum-) "dfca6d8f4a6c4e847fc126d5f1b7b05b")
(setf (get realsense_ros_person::SkeletonJoint :datatype-) "realsense_ros_person/SkeletonJoint")
(setf (get realsense_ros_person::SkeletonJoint :definition-)
      "int32 type
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



(provide :realsense_ros_person/SkeletonJoint "dfca6d8f4a6c4e847fc126d5f1b7b05b")


