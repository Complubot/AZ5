; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude StopTracking-request.msg.html

(cl:defclass <StopTracking-request> (roslisp-msg-protocol:ros-message)
  ((personId
    :reader personId
    :initarg :personId
    :type cl:integer
    :initform 0))
)

(cl:defclass StopTracking-request (<StopTracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopTracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopTracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<StopTracking-request> is deprecated: use realsense_ros_person-srv:StopTracking-request instead.")))

(cl:ensure-generic-function 'personId-val :lambda-list '(m))
(cl:defmethod personId-val ((m <StopTracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:personId-val is deprecated.  Use realsense_ros_person-srv:personId instead.")
  (personId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopTracking-request>) ostream)
  "Serializes a message object of type '<StopTracking-request>"
  (cl:let* ((signed (cl:slot-value msg 'personId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopTracking-request>) istream)
  "Deserializes a message object of type '<StopTracking-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'personId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopTracking-request>)))
  "Returns string type for a service object of type '<StopTracking-request>"
  "realsense_ros_person/StopTrackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopTracking-request)))
  "Returns string type for a service object of type 'StopTracking-request"
  "realsense_ros_person/StopTrackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopTracking-request>)))
  "Returns md5sum for a message object of type '<StopTracking-request>"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopTracking-request)))
  "Returns md5sum for a message object of type 'StopTracking-request"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopTracking-request>)))
  "Returns full string definition for message of type '<StopTracking-request>"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopTracking-request)))
  "Returns full string definition for message of type 'StopTracking-request"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopTracking-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopTracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopTracking-request
    (cl:cons ':personId (personId msg))
))
;//! \htmlinclude StopTracking-response.msg.html

(cl:defclass <StopTracking-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopTracking-response (<StopTracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopTracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopTracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<StopTracking-response> is deprecated: use realsense_ros_person-srv:StopTracking-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <StopTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopTracking-response>) ostream)
  "Serializes a message object of type '<StopTracking-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopTracking-response>) istream)
  "Deserializes a message object of type '<StopTracking-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopTracking-response>)))
  "Returns string type for a service object of type '<StopTracking-response>"
  "realsense_ros_person/StopTrackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopTracking-response)))
  "Returns string type for a service object of type 'StopTracking-response"
  "realsense_ros_person/StopTrackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopTracking-response>)))
  "Returns md5sum for a message object of type '<StopTracking-response>"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopTracking-response)))
  "Returns md5sum for a message object of type 'StopTracking-response"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopTracking-response>)))
  "Returns full string definition for message of type '<StopTracking-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopTracking-response)))
  "Returns full string definition for message of type 'StopTracking-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopTracking-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopTracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopTracking-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopTracking)))
  'StopTracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopTracking)))
  'StopTracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopTracking)))
  "Returns string type for a service object of type '<StopTracking>"
  "realsense_ros_person/StopTracking")