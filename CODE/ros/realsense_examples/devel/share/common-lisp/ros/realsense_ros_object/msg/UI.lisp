; Auto-generated. Do not edit!


(cl:in-package realsense_ros_object-msg)


;//! \htmlinclude UI.msg.html

(cl:defclass <UI> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0))
)

(cl:defclass UI (<UI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_object-msg:<UI> is deprecated: use realsense_ros_object-msg:UI instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <UI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:key-val is deprecated.  Use realsense_ros_object-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UI>) ostream)
  "Serializes a message object of type '<UI>"
  (cl:let* ((signed (cl:slot-value msg 'key)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UI>) istream)
  "Deserializes a message object of type '<UI>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UI>)))
  "Returns string type for a message object of type '<UI>"
  "realsense_ros_object/UI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UI)))
  "Returns string type for a message object of type 'UI"
  "realsense_ros_object/UI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UI>)))
  "Returns md5sum for a message object of type '<UI>"
  "d5f7d6b16cb4e9d7a81b607f04247968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UI)))
  "Returns md5sum for a message object of type 'UI"
  "d5f7d6b16cb4e9d7a81b607f04247968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UI>)))
  "Returns full string definition for message of type '<UI>"
  (cl:format cl:nil "int32 key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UI)))
  "Returns full string definition for message of type 'UI"
  (cl:format cl:nil "int32 key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UI>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UI>))
  "Converts a ROS message object to a list"
  (cl:list 'UI
    (cl:cons ':key (key msg))
))
