; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude UserInfo.msg.html

(cl:defclass <UserInfo> (roslisp-msg-protocol:ros-message)
  ((Id
    :reader Id
    :initarg :Id
    :type cl:integer
    :initform 0))
)

(cl:defclass UserInfo (<UserInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<UserInfo> is deprecated: use realsense_ros_person-msg:UserInfo instead.")))

(cl:ensure-generic-function 'Id-val :lambda-list '(m))
(cl:defmethod Id-val ((m <UserInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:Id-val is deprecated.  Use realsense_ros_person-msg:Id instead.")
  (Id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserInfo>) ostream)
  "Serializes a message object of type '<UserInfo>"
  (cl:let* ((signed (cl:slot-value msg 'Id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserInfo>) istream)
  "Deserializes a message object of type '<UserInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserInfo>)))
  "Returns string type for a message object of type '<UserInfo>"
  "realsense_ros_person/UserInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserInfo)))
  "Returns string type for a message object of type 'UserInfo"
  "realsense_ros_person/UserInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserInfo>)))
  "Returns md5sum for a message object of type '<UserInfo>"
  "4c256f183ddb18ca1c8cac601691eb32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserInfo)))
  "Returns md5sum for a message object of type 'UserInfo"
  "4c256f183ddb18ca1c8cac601691eb32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserInfo>)))
  "Returns full string definition for message of type '<UserInfo>"
  (cl:format cl:nil "int32 Id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserInfo)))
  "Returns full string definition for message of type 'UserInfo"
  (cl:format cl:nil "int32 Id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserInfo>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UserInfo
    (cl:cons ':Id (Id msg))
))
