; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude Frame.msg.html

(cl:defclass <Frame> (roslisp-msg-protocol:ros-message)
  ((numberOfUsers
    :reader numberOfUsers
    :initarg :numberOfUsers
    :type cl:integer
    :initform 0)
   (usersData
    :reader usersData
    :initarg :usersData
    :type (cl:vector realsense_ros_person-msg:User)
   :initform (cl:make-array 0 :element-type 'realsense_ros_person-msg:User :initial-element (cl:make-instance 'realsense_ros_person-msg:User))))
)

(cl:defclass Frame (<Frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<Frame> is deprecated: use realsense_ros_person-msg:Frame instead.")))

(cl:ensure-generic-function 'numberOfUsers-val :lambda-list '(m))
(cl:defmethod numberOfUsers-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:numberOfUsers-val is deprecated.  Use realsense_ros_person-msg:numberOfUsers instead.")
  (numberOfUsers m))

(cl:ensure-generic-function 'usersData-val :lambda-list '(m))
(cl:defmethod usersData-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:usersData-val is deprecated.  Use realsense_ros_person-msg:usersData instead.")
  (usersData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frame>) ostream)
  "Serializes a message object of type '<Frame>"
  (cl:let* ((signed (cl:slot-value msg 'numberOfUsers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'usersData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'usersData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frame>) istream)
  "Deserializes a message object of type '<Frame>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numberOfUsers) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'usersData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'usersData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_ros_person-msg:User))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frame>)))
  "Returns string type for a message object of type '<Frame>"
  "realsense_ros_person/Frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frame)))
  "Returns string type for a message object of type 'Frame"
  "realsense_ros_person/Frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frame>)))
  "Returns md5sum for a message object of type '<Frame>"
  "0fc1584508d060a88fda97d4fdfd469b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frame)))
  "Returns md5sum for a message object of type 'Frame"
  "0fc1584508d060a88fda97d4fdfd469b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frame>)))
  "Returns full string definition for message of type '<Frame>"
  (cl:format cl:nil "int32 numberOfUsers~%User[] usersData~%~%================================================================================~%MSG: realsense_ros_person/User~%UserInfo userInfo~%geometry_msgs/Point32 centerOfMassImage~%geometry_msgs/Point32 centerOfMassWorld~%RectWithConfidence userRect~%RectWithConfidence headBoundingBox~%LandmarksInfo landmarksInfo~%EulerAnglesWithConfidence headPose~%SkeletonJoint[] skeletonJoints~%Gestures gestures~%~%~%================================================================================~%MSG: realsense_ros_person/UserInfo~%int32 Id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: realsense_ros_person/RectWithConfidence~%int32 confidence~%geometry_msgs/Point32[2] rectCorners~%~%================================================================================~%MSG: realsense_ros_person/LandmarksInfo~%int32 confidence~%Landmark[] landmarks~%~%================================================================================~%MSG: realsense_ros_person/Landmark~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_ros_person/EulerAnglesWithConfidence~%EulerAngles angles~%int32 confidence~%~%================================================================================~%MSG: realsense_ros_person/EulerAngles~%float32 pitch~%float32 roll~%float32 yaw~%~%================================================================================~%MSG: realsense_ros_person/SkeletonJoint~%int32 type~%float32 confidence~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%#joint types constants~%int32 JOINT_ANKLE_LEFT=0~%int32 JOINT_ANKLE_RIGHT=1~%int32 JOINT_ELBOW_LEFT=2~%int32 JOINT_ELBOW_RIGHT=3~%int32 JOINT_FOOT_LEFT=4~%int32 JOINT_FOOT_RIGHT=5~%int32 JOINT_HAND_LEFT=6~%int32 JOINT_HAND_RIGHT=7~%int32 JOINT_HAND_TIP_LEFT=8~%int32 JOINT_HAND_TIP_RIGHT=9~%int32 JOINT_HEAD=10~%int32 JOINT_HIP_LEFT=11~%int32 JOINT_HIP_RIGHT=12~%int32 JOINT_KNEE_LEFT=13~%int32 JOINT_KNEE_RIGHT=14~%int32 JOINT_NECK=15~%int32 JOINT_SHOULDER_LEFT=16~%int32 JOINT_SHOULDER_RIGHT=17~%int32 JOINT_SPINE_BASE=18~%int32 JOINT_SPINE_MID=19~%int32 JOINT_SPINE_SHOULDER=20~%int32 JOINT_THUMB_LEFT=21~%int32 JOINT_THUMB_RIGHT=22~%int32 JOINT_WRIST_LEFT=23~%int32 JOINT_WRIST_RIGHT=24~%int32 JOINT_UNKNOWN=25~%~%================================================================================~%MSG: realsense_ros_person/Gestures~%Pointing pointing~%Wave wave~%~%================================================================================~%MSG: realsense_ros_person/Pointing~%int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: realsense_ros_person/Wave~%int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frame)))
  "Returns full string definition for message of type 'Frame"
  (cl:format cl:nil "int32 numberOfUsers~%User[] usersData~%~%================================================================================~%MSG: realsense_ros_person/User~%UserInfo userInfo~%geometry_msgs/Point32 centerOfMassImage~%geometry_msgs/Point32 centerOfMassWorld~%RectWithConfidence userRect~%RectWithConfidence headBoundingBox~%LandmarksInfo landmarksInfo~%EulerAnglesWithConfidence headPose~%SkeletonJoint[] skeletonJoints~%Gestures gestures~%~%~%================================================================================~%MSG: realsense_ros_person/UserInfo~%int32 Id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: realsense_ros_person/RectWithConfidence~%int32 confidence~%geometry_msgs/Point32[2] rectCorners~%~%================================================================================~%MSG: realsense_ros_person/LandmarksInfo~%int32 confidence~%Landmark[] landmarks~%~%================================================================================~%MSG: realsense_ros_person/Landmark~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_ros_person/EulerAnglesWithConfidence~%EulerAngles angles~%int32 confidence~%~%================================================================================~%MSG: realsense_ros_person/EulerAngles~%float32 pitch~%float32 roll~%float32 yaw~%~%================================================================================~%MSG: realsense_ros_person/SkeletonJoint~%int32 type~%float32 confidence~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%#joint types constants~%int32 JOINT_ANKLE_LEFT=0~%int32 JOINT_ANKLE_RIGHT=1~%int32 JOINT_ELBOW_LEFT=2~%int32 JOINT_ELBOW_RIGHT=3~%int32 JOINT_FOOT_LEFT=4~%int32 JOINT_FOOT_RIGHT=5~%int32 JOINT_HAND_LEFT=6~%int32 JOINT_HAND_RIGHT=7~%int32 JOINT_HAND_TIP_LEFT=8~%int32 JOINT_HAND_TIP_RIGHT=9~%int32 JOINT_HEAD=10~%int32 JOINT_HIP_LEFT=11~%int32 JOINT_HIP_RIGHT=12~%int32 JOINT_KNEE_LEFT=13~%int32 JOINT_KNEE_RIGHT=14~%int32 JOINT_NECK=15~%int32 JOINT_SHOULDER_LEFT=16~%int32 JOINT_SHOULDER_RIGHT=17~%int32 JOINT_SPINE_BASE=18~%int32 JOINT_SPINE_MID=19~%int32 JOINT_SPINE_SHOULDER=20~%int32 JOINT_THUMB_LEFT=21~%int32 JOINT_THUMB_RIGHT=22~%int32 JOINT_WRIST_LEFT=23~%int32 JOINT_WRIST_RIGHT=24~%int32 JOINT_UNKNOWN=25~%~%================================================================================~%MSG: realsense_ros_person/Gestures~%Pointing pointing~%Wave wave~%~%================================================================================~%MSG: realsense_ros_person/Pointing~%int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: realsense_ros_person/Wave~%int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frame>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'usersData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frame>))
  "Converts a ROS message object to a list"
  (cl:list 'Frame
    (cl:cons ':numberOfUsers (numberOfUsers msg))
    (cl:cons ':usersData (usersData msg))
))
