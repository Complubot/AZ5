; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude StartTracking-request.msg.html

(cl:defclass <StartTracking-request> (roslisp-msg-protocol:ros-message)
  ((personId
    :reader personId
    :initarg :personId
    :type cl:integer
    :initform 0))
)

(cl:defclass StartTracking-request (<StartTracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<StartTracking-request> is deprecated: use realsense_ros_person-srv:StartTracking-request instead.")))

(cl:ensure-generic-function 'personId-val :lambda-list '(m))
(cl:defmethod personId-val ((m <StartTracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:personId-val is deprecated.  Use realsense_ros_person-srv:personId instead.")
  (personId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTracking-request>) ostream)
  "Serializes a message object of type '<StartTracking-request>"
  (cl:let* ((signed (cl:slot-value msg 'personId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTracking-request>) istream)
  "Deserializes a message object of type '<StartTracking-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'personId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTracking-request>)))
  "Returns string type for a service object of type '<StartTracking-request>"
  "realsense_ros_person/StartTrackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTracking-request)))
  "Returns string type for a service object of type 'StartTracking-request"
  "realsense_ros_person/StartTrackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTracking-request>)))
  "Returns md5sum for a message object of type '<StartTracking-request>"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTracking-request)))
  "Returns md5sum for a message object of type 'StartTracking-request"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTracking-request>)))
  "Returns full string definition for message of type '<StartTracking-request>"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTracking-request)))
  "Returns full string definition for message of type 'StartTracking-request"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTracking-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTracking-request
    (cl:cons ':personId (personId msg))
))
;//! \htmlinclude StartTracking-response.msg.html

(cl:defclass <StartTracking-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartTracking-response (<StartTracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<StartTracking-response> is deprecated: use realsense_ros_person-srv:StartTracking-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <StartTracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTracking-response>) ostream)
  "Serializes a message object of type '<StartTracking-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTracking-response>) istream)
  "Deserializes a message object of type '<StartTracking-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTracking-response>)))
  "Returns string type for a service object of type '<StartTracking-response>"
  "realsense_ros_person/StartTrackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTracking-response)))
  "Returns string type for a service object of type 'StartTracking-response"
  "realsense_ros_person/StartTrackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTracking-response>)))
  "Returns md5sum for a message object of type '<StartTracking-response>"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTracking-response)))
  "Returns md5sum for a message object of type 'StartTracking-response"
  "1b7f90a77bc2f8f3c4e3d407153b5435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTracking-response>)))
  "Returns full string definition for message of type '<StartTracking-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTracking-response)))
  "Returns full string definition for message of type 'StartTracking-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTracking-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTracking-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartTracking)))
  'StartTracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartTracking)))
  'StartTracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTracking)))
  "Returns string type for a service object of type '<StartTracking>"
  "realsense_ros_person/StartTracking")