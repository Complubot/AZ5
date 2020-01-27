; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude User.msg.html

(cl:defclass <User> (roslisp-msg-protocol:ros-message)
  ((userInfo
    :reader userInfo
    :initarg :userInfo
    :type realsense_ros_person-msg:UserInfo
    :initform (cl:make-instance 'realsense_ros_person-msg:UserInfo))
   (centerOfMassImage
    :reader centerOfMassImage
    :initarg :centerOfMassImage
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (centerOfMassWorld
    :reader centerOfMassWorld
    :initarg :centerOfMassWorld
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (userRect
    :reader userRect
    :initarg :userRect
    :type realsense_ros_person-msg:RectWithConfidence
    :initform (cl:make-instance 'realsense_ros_person-msg:RectWithConfidence))
   (headBoundingBox
    :reader headBoundingBox
    :initarg :headBoundingBox
    :type realsense_ros_person-msg:RectWithConfidence
    :initform (cl:make-instance 'realsense_ros_person-msg:RectWithConfidence))
   (landmarksInfo
    :reader landmarksInfo
    :initarg :landmarksInfo
    :type realsense_ros_person-msg:LandmarksInfo
    :initform (cl:make-instance 'realsense_ros_person-msg:LandmarksInfo))
   (headPose
    :reader headPose
    :initarg :headPose
    :type realsense_ros_person-msg:EulerAnglesWithConfidence
    :initform (cl:make-instance 'realsense_ros_person-msg:EulerAnglesWithConfidence))
   (skeletonJoints
    :reader skeletonJoints
    :initarg :skeletonJoints
    :type (cl:vector realsense_ros_person-msg:SkeletonJoint)
   :initform (cl:make-array 0 :element-type 'realsense_ros_person-msg:SkeletonJoint :initial-element (cl:make-instance 'realsense_ros_person-msg:SkeletonJoint)))
   (gestures
    :reader gestures
    :initarg :gestures
    :type realsense_ros_person-msg:Gestures
    :initform (cl:make-instance 'realsense_ros_person-msg:Gestures)))
)

(cl:defclass User (<User>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <User>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'User)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<User> is deprecated: use realsense_ros_person-msg:User instead.")))

(cl:ensure-generic-function 'userInfo-val :lambda-list '(m))
(cl:defmethod userInfo-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:userInfo-val is deprecated.  Use realsense_ros_person-msg:userInfo instead.")
  (userInfo m))

(cl:ensure-generic-function 'centerOfMassImage-val :lambda-list '(m))
(cl:defmethod centerOfMassImage-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:centerOfMassImage-val is deprecated.  Use realsense_ros_person-msg:centerOfMassImage instead.")
  (centerOfMassImage m))

(cl:ensure-generic-function 'centerOfMassWorld-val :lambda-list '(m))
(cl:defmethod centerOfMassWorld-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:centerOfMassWorld-val is deprecated.  Use realsense_ros_person-msg:centerOfMassWorld instead.")
  (centerOfMassWorld m))

(cl:ensure-generic-function 'userRect-val :lambda-list '(m))
(cl:defmethod userRect-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:userRect-val is deprecated.  Use realsense_ros_person-msg:userRect instead.")
  (userRect m))

(cl:ensure-generic-function 'headBoundingBox-val :lambda-list '(m))
(cl:defmethod headBoundingBox-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:headBoundingBox-val is deprecated.  Use realsense_ros_person-msg:headBoundingBox instead.")
  (headBoundingBox m))

(cl:ensure-generic-function 'landmarksInfo-val :lambda-list '(m))
(cl:defmethod landmarksInfo-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:landmarksInfo-val is deprecated.  Use realsense_ros_person-msg:landmarksInfo instead.")
  (landmarksInfo m))

(cl:ensure-generic-function 'headPose-val :lambda-list '(m))
(cl:defmethod headPose-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:headPose-val is deprecated.  Use realsense_ros_person-msg:headPose instead.")
  (headPose m))

(cl:ensure-generic-function 'skeletonJoints-val :lambda-list '(m))
(cl:defmethod skeletonJoints-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:skeletonJoints-val is deprecated.  Use realsense_ros_person-msg:skeletonJoints instead.")
  (skeletonJoints m))

(cl:ensure-generic-function 'gestures-val :lambda-list '(m))
(cl:defmethod gestures-val ((m <User>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:gestures-val is deprecated.  Use realsense_ros_person-msg:gestures instead.")
  (gestures m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <User>) ostream)
  "Serializes a message object of type '<User>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'userInfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerOfMassImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerOfMassWorld) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'userRect) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headBoundingBox) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'landmarksInfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headPose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'skeletonJoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'skeletonJoints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gestures) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <User>) istream)
  "Deserializes a message object of type '<User>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'userInfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerOfMassImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerOfMassWorld) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'userRect) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headBoundingBox) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'landmarksInfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headPose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'skeletonJoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'skeletonJoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_ros_person-msg:SkeletonJoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gestures) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<User>)))
  "Returns string type for a message object of type '<User>"
  "realsense_ros_person/User")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'User)))
  "Returns string type for a message object of type 'User"
  "realsense_ros_person/User")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<User>)))
  "Returns md5sum for a message object of type '<User>"
  "6686a133e9edf3243aaa058301a3c9c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'User)))
  "Returns md5sum for a message object of type 'User"
  "6686a133e9edf3243aaa058301a3c9c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<User>)))
  "Returns full string definition for message of type '<User>"
  (cl:format cl:nil "UserInfo userInfo~%geometry_msgs/Point32 centerOfMassImage~%geometry_msgs/Point32 centerOfMassWorld~%RectWithConfidence userRect~%RectWithConfidence headBoundingBox~%LandmarksInfo landmarksInfo~%EulerAnglesWithConfidence headPose~%SkeletonJoint[] skeletonJoints~%Gestures gestures~%~%~%================================================================================~%MSG: realsense_ros_person/UserInfo~%int32 Id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: realsense_ros_person/RectWithConfidence~%int32 confidence~%geometry_msgs/Point32[2] rectCorners~%~%================================================================================~%MSG: realsense_ros_person/LandmarksInfo~%int32 confidence~%Landmark[] landmarks~%~%================================================================================~%MSG: realsense_ros_person/Landmark~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_ros_person/EulerAnglesWithConfidence~%EulerAngles angles~%int32 confidence~%~%================================================================================~%MSG: realsense_ros_person/EulerAngles~%float32 pitch~%float32 roll~%float32 yaw~%~%================================================================================~%MSG: realsense_ros_person/SkeletonJoint~%int32 type~%float32 confidence~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%#joint types constants~%int32 JOINT_ANKLE_LEFT=0~%int32 JOINT_ANKLE_RIGHT=1~%int32 JOINT_ELBOW_LEFT=2~%int32 JOINT_ELBOW_RIGHT=3~%int32 JOINT_FOOT_LEFT=4~%int32 JOINT_FOOT_RIGHT=5~%int32 JOINT_HAND_LEFT=6~%int32 JOINT_HAND_RIGHT=7~%int32 JOINT_HAND_TIP_LEFT=8~%int32 JOINT_HAND_TIP_RIGHT=9~%int32 JOINT_HEAD=10~%int32 JOINT_HIP_LEFT=11~%int32 JOINT_HIP_RIGHT=12~%int32 JOINT_KNEE_LEFT=13~%int32 JOINT_KNEE_RIGHT=14~%int32 JOINT_NECK=15~%int32 JOINT_SHOULDER_LEFT=16~%int32 JOINT_SHOULDER_RIGHT=17~%int32 JOINT_SPINE_BASE=18~%int32 JOINT_SPINE_MID=19~%int32 JOINT_SPINE_SHOULDER=20~%int32 JOINT_THUMB_LEFT=21~%int32 JOINT_THUMB_RIGHT=22~%int32 JOINT_WRIST_LEFT=23~%int32 JOINT_WRIST_RIGHT=24~%int32 JOINT_UNKNOWN=25~%~%================================================================================~%MSG: realsense_ros_person/Gestures~%Pointing pointing~%Wave wave~%~%================================================================================~%MSG: realsense_ros_person/Pointing~%int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: realsense_ros_person/Wave~%int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'User)))
  "Returns full string definition for message of type 'User"
  (cl:format cl:nil "UserInfo userInfo~%geometry_msgs/Point32 centerOfMassImage~%geometry_msgs/Point32 centerOfMassWorld~%RectWithConfidence userRect~%RectWithConfidence headBoundingBox~%LandmarksInfo landmarksInfo~%EulerAnglesWithConfidence headPose~%SkeletonJoint[] skeletonJoints~%Gestures gestures~%~%~%================================================================================~%MSG: realsense_ros_person/UserInfo~%int32 Id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: realsense_ros_person/RectWithConfidence~%int32 confidence~%geometry_msgs/Point32[2] rectCorners~%~%================================================================================~%MSG: realsense_ros_person/LandmarksInfo~%int32 confidence~%Landmark[] landmarks~%~%================================================================================~%MSG: realsense_ros_person/Landmark~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: realsense_ros_person/EulerAnglesWithConfidence~%EulerAngles angles~%int32 confidence~%~%================================================================================~%MSG: realsense_ros_person/EulerAngles~%float32 pitch~%float32 roll~%float32 yaw~%~%================================================================================~%MSG: realsense_ros_person/SkeletonJoint~%int32 type~%float32 confidence~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%#joint types constants~%int32 JOINT_ANKLE_LEFT=0~%int32 JOINT_ANKLE_RIGHT=1~%int32 JOINT_ELBOW_LEFT=2~%int32 JOINT_ELBOW_RIGHT=3~%int32 JOINT_FOOT_LEFT=4~%int32 JOINT_FOOT_RIGHT=5~%int32 JOINT_HAND_LEFT=6~%int32 JOINT_HAND_RIGHT=7~%int32 JOINT_HAND_TIP_LEFT=8~%int32 JOINT_HAND_TIP_RIGHT=9~%int32 JOINT_HEAD=10~%int32 JOINT_HIP_LEFT=11~%int32 JOINT_HIP_RIGHT=12~%int32 JOINT_KNEE_LEFT=13~%int32 JOINT_KNEE_RIGHT=14~%int32 JOINT_NECK=15~%int32 JOINT_SHOULDER_LEFT=16~%int32 JOINT_SHOULDER_RIGHT=17~%int32 JOINT_SPINE_BASE=18~%int32 JOINT_SPINE_MID=19~%int32 JOINT_SPINE_SHOULDER=20~%int32 JOINT_THUMB_LEFT=21~%int32 JOINT_THUMB_RIGHT=22~%int32 JOINT_WRIST_LEFT=23~%int32 JOINT_WRIST_RIGHT=24~%int32 JOINT_UNKNOWN=25~%~%================================================================================~%MSG: realsense_ros_person/Gestures~%Pointing pointing~%Wave wave~%~%================================================================================~%MSG: realsense_ros_person/Pointing~%int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: realsense_ros_person/Wave~%int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <User>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'userInfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerOfMassImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerOfMassWorld))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'userRect))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headBoundingBox))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'landmarksInfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headPose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'skeletonJoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gestures))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <User>))
  "Converts a ROS message object to a list"
  (cl:list 'User
    (cl:cons ':userInfo (userInfo msg))
    (cl:cons ':centerOfMassImage (centerOfMassImage msg))
    (cl:cons ':centerOfMassWorld (centerOfMassWorld msg))
    (cl:cons ':userRect (userRect msg))
    (cl:cons ':headBoundingBox (headBoundingBox msg))
    (cl:cons ':landmarksInfo (landmarksInfo msg))
    (cl:cons ':headPose (headPose msg))
    (cl:cons ':skeletonJoints (skeletonJoints msg))
    (cl:cons ':gestures (gestures msg))
))
