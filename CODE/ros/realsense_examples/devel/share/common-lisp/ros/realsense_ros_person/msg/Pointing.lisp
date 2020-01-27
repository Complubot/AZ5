; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude Pointing.msg.html

(cl:defclass <Pointing> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:integer
    :initform 0)
   (originColor
    :reader originColor
    :initarg :originColor
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (originWorld
    :reader originWorld
    :initarg :originWorld
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (orientationColor
    :reader orientationColor
    :initarg :orientationColor
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (orientationWorld
    :reader orientationWorld
    :initarg :orientationWorld
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Pointing (<Pointing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pointing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pointing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<Pointing> is deprecated: use realsense_ros_person-msg:Pointing instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Pointing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:confidence-val is deprecated.  Use realsense_ros_person-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'originColor-val :lambda-list '(m))
(cl:defmethod originColor-val ((m <Pointing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:originColor-val is deprecated.  Use realsense_ros_person-msg:originColor instead.")
  (originColor m))

(cl:ensure-generic-function 'originWorld-val :lambda-list '(m))
(cl:defmethod originWorld-val ((m <Pointing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:originWorld-val is deprecated.  Use realsense_ros_person-msg:originWorld instead.")
  (originWorld m))

(cl:ensure-generic-function 'orientationColor-val :lambda-list '(m))
(cl:defmethod orientationColor-val ((m <Pointing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:orientationColor-val is deprecated.  Use realsense_ros_person-msg:orientationColor instead.")
  (orientationColor m))

(cl:ensure-generic-function 'orientationWorld-val :lambda-list '(m))
(cl:defmethod orientationWorld-val ((m <Pointing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:orientationWorld-val is deprecated.  Use realsense_ros_person-msg:orientationWorld instead.")
  (orientationWorld m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pointing>) ostream)
  "Serializes a message object of type '<Pointing>"
  (cl:let* ((signed (cl:slot-value msg 'confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'originColor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'originWorld) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientationColor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientationWorld) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pointing>) istream)
  "Deserializes a message object of type '<Pointing>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'originColor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'originWorld) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientationColor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientationWorld) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pointing>)))
  "Returns string type for a message object of type '<Pointing>"
  "realsense_ros_person/Pointing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pointing)))
  "Returns string type for a message object of type 'Pointing"
  "realsense_ros_person/Pointing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pointing>)))
  "Returns md5sum for a message object of type '<Pointing>"
  "e8e17bba059ae94c10bd49b0a03744e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pointing)))
  "Returns md5sum for a message object of type 'Pointing"
  "e8e17bba059ae94c10bd49b0a03744e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pointing>)))
  "Returns full string definition for message of type '<Pointing>"
  (cl:format cl:nil "int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pointing)))
  "Returns full string definition for message of type 'Pointing"
  (cl:format cl:nil "int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pointing>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'originColor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'originWorld))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientationColor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientationWorld))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pointing>))
  "Converts a ROS message object to a list"
  (cl:list 'Pointing
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':originColor (originColor msg))
    (cl:cons ':originWorld (originWorld msg))
    (cl:cons ':orientationColor (orientationColor msg))
    (cl:cons ':orientationWorld (orientationWorld msg))
))
