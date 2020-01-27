; Auto-generated. Do not edit!


(cl:in-package realsense_ros_slam-srv)


;//! \htmlinclude SaveOutput-request.msg.html

(cl:defclass <SaveOutput-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveOutput-request (<SaveOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_slam-srv:<SaveOutput-request> is deprecated: use realsense_ros_slam-srv:SaveOutput-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveOutput-request>) ostream)
  "Serializes a message object of type '<SaveOutput-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveOutput-request>) istream)
  "Deserializes a message object of type '<SaveOutput-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveOutput-request>)))
  "Returns string type for a service object of type '<SaveOutput-request>"
  "realsense_ros_slam/SaveOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveOutput-request)))
  "Returns string type for a service object of type 'SaveOutput-request"
  "realsense_ros_slam/SaveOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveOutput-request>)))
  "Returns md5sum for a message object of type '<SaveOutput-request>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveOutput-request)))
  "Returns md5sum for a message object of type 'SaveOutput-request"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveOutput-request>)))
  "Returns full string definition for message of type '<SaveOutput-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveOutput-request)))
  "Returns full string definition for message of type 'SaveOutput-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveOutput-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveOutput-request
))
;//! \htmlinclude SaveOutput-response.msg.html

(cl:defclass <SaveOutput-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveOutput-response (<SaveOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_slam-srv:<SaveOutput-response> is deprecated: use realsense_ros_slam-srv:SaveOutput-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SaveOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_slam-srv:status-val is deprecated.  Use realsense_ros_slam-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveOutput-response>) ostream)
  "Serializes a message object of type '<SaveOutput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveOutput-response>) istream)
  "Deserializes a message object of type '<SaveOutput-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveOutput-response>)))
  "Returns string type for a service object of type '<SaveOutput-response>"
  "realsense_ros_slam/SaveOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveOutput-response)))
  "Returns string type for a service object of type 'SaveOutput-response"
  "realsense_ros_slam/SaveOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveOutput-response>)))
  "Returns md5sum for a message object of type '<SaveOutput-response>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveOutput-response)))
  "Returns md5sum for a message object of type 'SaveOutput-response"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveOutput-response>)))
  "Returns full string definition for message of type '<SaveOutput-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveOutput-response)))
  "Returns full string definition for message of type 'SaveOutput-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveOutput-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveOutput-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveOutput)))
  'SaveOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveOutput)))
  'SaveOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveOutput)))
  "Returns string type for a service object of type '<SaveOutput>"
  "realsense_ros_slam/SaveOutput")