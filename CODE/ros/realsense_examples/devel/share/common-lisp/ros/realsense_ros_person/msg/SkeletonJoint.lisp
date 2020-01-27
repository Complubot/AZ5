; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude SkeletonJoint.msg.html

(cl:defclass <SkeletonJoint> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (location
    :reader location
    :initarg :location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (realWorldCoordinates
    :reader realWorldCoordinates
    :initarg :realWorldCoordinates
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass SkeletonJoint (<SkeletonJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SkeletonJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SkeletonJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<SkeletonJoint> is deprecated: use realsense_ros_person-msg:SkeletonJoint instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SkeletonJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:type-val is deprecated.  Use realsense_ros_person-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <SkeletonJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:confidence-val is deprecated.  Use realsense_ros_person-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <SkeletonJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:location-val is deprecated.  Use realsense_ros_person-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'realWorldCoordinates-val :lambda-list '(m))
(cl:defmethod realWorldCoordinates-val ((m <SkeletonJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:realWorldCoordinates-val is deprecated.  Use realsense_ros_person-msg:realWorldCoordinates instead.")
  (realWorldCoordinates m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SkeletonJoint>)))
    "Constants for message type '<SkeletonJoint>"
  '((:JOINT_ANKLE_LEFT . 0)
    (:JOINT_ANKLE_RIGHT . 1)
    (:JOINT_ELBOW_LEFT . 2)
    (:JOINT_ELBOW_RIGHT . 3)
    (:JOINT_FOOT_LEFT . 4)
    (:JOINT_FOOT_RIGHT . 5)
    (:JOINT_HAND_LEFT . 6)
    (:JOINT_HAND_RIGHT . 7)
    (:JOINT_HAND_TIP_LEFT . 8)
    (:JOINT_HAND_TIP_RIGHT . 9)
    (:JOINT_HEAD . 10)
    (:JOINT_HIP_LEFT . 11)
    (:JOINT_HIP_RIGHT . 12)
    (:JOINT_KNEE_LEFT . 13)
    (:JOINT_KNEE_RIGHT . 14)
    (:JOINT_NECK . 15)
    (:JOINT_SHOULDER_LEFT . 16)
    (:JOINT_SHOULDER_RIGHT . 17)
    (:JOINT_SPINE_BASE . 18)
    (:JOINT_SPINE_MID . 19)
    (:JOINT_SPINE_SHOULDER . 20)
    (:JOINT_THUMB_LEFT . 21)
    (:JOINT_THUMB_RIGHT . 22)
    (:JOINT_WRIST_LEFT . 23)
    (:JOINT_WRIST_RIGHT . 24)
    (:JOINT_UNKNOWN . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SkeletonJoint)))
    "Constants for message type 'SkeletonJoint"
  '((:JOINT_ANKLE_LEFT . 0)
    (:JOINT_ANKLE_RIGHT . 1)
    (:JOINT_ELBOW_LEFT . 2)
    (:JOINT_ELBOW_RIGHT . 3)
    (:JOINT_FOOT_LEFT . 4)
    (:JOINT_FOOT_RIGHT . 5)
    (:JOINT_HAND_LEFT . 6)
    (:JOINT_HAND_RIGHT . 7)
    (:JOINT_HAND_TIP_LEFT . 8)
    (:JOINT_HAND_TIP_RIGHT . 9)
    (:JOINT_HEAD . 10)
    (:JOINT_HIP_LEFT . 11)
    (:JOINT_HIP_RIGHT . 12)
    (:JOINT_KNEE_LEFT . 13)
    (:JOINT_KNEE_RIGHT . 14)
    (:JOINT_NECK . 15)
    (:JOINT_SHOULDER_LEFT . 16)
    (:JOINT_SHOULDER_RIGHT . 17)
    (:JOINT_SPINE_BASE . 18)
    (:JOINT_SPINE_MID . 19)
    (:JOINT_SPINE_SHOULDER . 20)
    (:JOINT_THUMB_LEFT . 21)
    (:JOINT_THUMB_RIGHT . 22)
    (:JOINT_WRIST_LEFT . 23)
    (:JOINT_WRIST_RIGHT . 24)
    (:JOINT_UNKNOWN . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SkeletonJoint>) ostream)
  "Serializes a message object of type '<SkeletonJoint>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'realWorldCoordinates) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SkeletonJoint>) istream)
  "Deserializes a message object of type '<SkeletonJoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'realWorldCoordinates) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SkeletonJoint>)))
  "Returns string type for a message object of type '<SkeletonJoint>"
  "realsense_ros_person/SkeletonJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SkeletonJoint)))
  "Returns string type for a message object of type 'SkeletonJoint"
  "realsense_ros_person/SkeletonJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SkeletonJoint>)))
  "Returns md5sum for a message object of type '<SkeletonJoint>"
  "dfca6d8f4a6c4e847fc126d5f1b7b05b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SkeletonJoint)))
  "Returns md5sum for a message object of type 'SkeletonJoint"
  "dfca6d8f4a6c4e847fc126d5f1b7b05b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SkeletonJoint>)))
  "Returns full string definition for message of type '<SkeletonJoint>"
  (cl:format cl:nil "int32 type~%float32 confidence~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%#joint types constants~%int32 JOINT_ANKLE_LEFT=0~%int32 JOINT_ANKLE_RIGHT=1~%int32 JOINT_ELBOW_LEFT=2~%int32 JOINT_ELBOW_RIGHT=3~%int32 JOINT_FOOT_LEFT=4~%int32 JOINT_FOOT_RIGHT=5~%int32 JOINT_HAND_LEFT=6~%int32 JOINT_HAND_RIGHT=7~%int32 JOINT_HAND_TIP_LEFT=8~%int32 JOINT_HAND_TIP_RIGHT=9~%int32 JOINT_HEAD=10~%int32 JOINT_HIP_LEFT=11~%int32 JOINT_HIP_RIGHT=12~%int32 JOINT_KNEE_LEFT=13~%int32 JOINT_KNEE_RIGHT=14~%int32 JOINT_NECK=15~%int32 JOINT_SHOULDER_LEFT=16~%int32 JOINT_SHOULDER_RIGHT=17~%int32 JOINT_SPINE_BASE=18~%int32 JOINT_SPINE_MID=19~%int32 JOINT_SPINE_SHOULDER=20~%int32 JOINT_THUMB_LEFT=21~%int32 JOINT_THUMB_RIGHT=22~%int32 JOINT_WRIST_LEFT=23~%int32 JOINT_WRIST_RIGHT=24~%int32 JOINT_UNKNOWN=25~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SkeletonJoint)))
  "Returns full string definition for message of type 'SkeletonJoint"
  (cl:format cl:nil "int32 type~%float32 confidence~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%#joint types constants~%int32 JOINT_ANKLE_LEFT=0~%int32 JOINT_ANKLE_RIGHT=1~%int32 JOINT_ELBOW_LEFT=2~%int32 JOINT_ELBOW_RIGHT=3~%int32 JOINT_FOOT_LEFT=4~%int32 JOINT_FOOT_RIGHT=5~%int32 JOINT_HAND_LEFT=6~%int32 JOINT_HAND_RIGHT=7~%int32 JOINT_HAND_TIP_LEFT=8~%int32 JOINT_HAND_TIP_RIGHT=9~%int32 JOINT_HEAD=10~%int32 JOINT_HIP_LEFT=11~%int32 JOINT_HIP_RIGHT=12~%int32 JOINT_KNEE_LEFT=13~%int32 JOINT_KNEE_RIGHT=14~%int32 JOINT_NECK=15~%int32 JOINT_SHOULDER_LEFT=16~%int32 JOINT_SHOULDER_RIGHT=17~%int32 JOINT_SPINE_BASE=18~%int32 JOINT_SPINE_MID=19~%int32 JOINT_SPINE_SHOULDER=20~%int32 JOINT_THUMB_LEFT=21~%int32 JOINT_THUMB_RIGHT=22~%int32 JOINT_WRIST_LEFT=23~%int32 JOINT_WRIST_RIGHT=24~%int32 JOINT_UNKNOWN=25~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SkeletonJoint>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'realWorldCoordinates))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SkeletonJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'SkeletonJoint
    (cl:cons ':type (type msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':location (location msg))
    (cl:cons ':realWorldCoordinates (realWorldCoordinates msg))
))
