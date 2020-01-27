; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude Gesture.msg.html

(cl:defclass <Gesture> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (vectorOrigin
    :reader vectorOrigin
    :initarg :vectorOrigin
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (pointingVector
    :reader pointingVector
    :initarg :pointingVector
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Gesture (<Gesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<Gesture> is deprecated: use realsense_ros_person-msg:Gesture instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:type-val is deprecated.  Use realsense_ros_person-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'vectorOrigin-val :lambda-list '(m))
(cl:defmethod vectorOrigin-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:vectorOrigin-val is deprecated.  Use realsense_ros_person-msg:vectorOrigin instead.")
  (vectorOrigin m))

(cl:ensure-generic-function 'pointingVector-val :lambda-list '(m))
(cl:defmethod pointingVector-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:pointingVector-val is deprecated.  Use realsense_ros_person-msg:pointingVector instead.")
  (pointingVector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gesture>) ostream)
  "Serializes a message object of type '<Gesture>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vectorOrigin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointingVector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gesture>) istream)
  "Deserializes a message object of type '<Gesture>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vectorOrigin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointingVector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gesture>)))
  "Returns string type for a message object of type '<Gesture>"
  "realsense_ros_person/Gesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gesture)))
  "Returns string type for a message object of type 'Gesture"
  "realsense_ros_person/Gesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gesture>)))
  "Returns md5sum for a message object of type '<Gesture>"
  "d46ba8b59c5b03a022b488e568706275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gesture)))
  "Returns md5sum for a message object of type 'Gesture"
  "d46ba8b59c5b03a022b488e568706275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gesture>)))
  "Returns full string definition for message of type '<Gesture>"
  (cl:format cl:nil "int32 type~%geometry_msgs/Point32 vectorOrigin~%geometry_msgs/Vector3 pointingVector~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gesture)))
  "Returns full string definition for message of type 'Gesture"
  (cl:format cl:nil "int32 type~%geometry_msgs/Point32 vectorOrigin~%geometry_msgs/Vector3 pointingVector~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gesture>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vectorOrigin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointingVector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gesture>))
  "Converts a ROS message object to a list"
  (cl:list 'Gesture
    (cl:cons ':type (type msg))
    (cl:cons ':vectorOrigin (vectorOrigin msg))
    (cl:cons ':pointingVector (pointingVector msg))
))
