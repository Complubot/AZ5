; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude LoadRecognitionDB-request.msg.html

(cl:defclass <LoadRecognitionDB-request> (roslisp-msg-protocol:ros-message)
  ((loadFromPath
    :reader loadFromPath
    :initarg :loadFromPath
    :type cl:string
    :initform ""))
)

(cl:defclass LoadRecognitionDB-request (<LoadRecognitionDB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadRecognitionDB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadRecognitionDB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<LoadRecognitionDB-request> is deprecated: use realsense_ros_person-srv:LoadRecognitionDB-request instead.")))

(cl:ensure-generic-function 'loadFromPath-val :lambda-list '(m))
(cl:defmethod loadFromPath-val ((m <LoadRecognitionDB-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:loadFromPath-val is deprecated.  Use realsense_ros_person-srv:loadFromPath instead.")
  (loadFromPath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadRecognitionDB-request>) ostream)
  "Serializes a message object of type '<LoadRecognitionDB-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'loadFromPath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'loadFromPath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadRecognitionDB-request>) istream)
  "Deserializes a message object of type '<LoadRecognitionDB-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loadFromPath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'loadFromPath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadRecognitionDB-request>)))
  "Returns string type for a service object of type '<LoadRecognitionDB-request>"
  "realsense_ros_person/LoadRecognitionDBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadRecognitionDB-request)))
  "Returns string type for a service object of type 'LoadRecognitionDB-request"
  "realsense_ros_person/LoadRecognitionDBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadRecognitionDB-request>)))
  "Returns md5sum for a message object of type '<LoadRecognitionDB-request>"
  "1831e0f589127bcbfbf3f10b978cf7a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadRecognitionDB-request)))
  "Returns md5sum for a message object of type 'LoadRecognitionDB-request"
  "1831e0f589127bcbfbf3f10b978cf7a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadRecognitionDB-request>)))
  "Returns full string definition for message of type '<LoadRecognitionDB-request>"
  (cl:format cl:nil "string loadFromPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadRecognitionDB-request)))
  "Returns full string definition for message of type 'LoadRecognitionDB-request"
  (cl:format cl:nil "string loadFromPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadRecognitionDB-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'loadFromPath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadRecognitionDB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadRecognitionDB-request
    (cl:cons ':loadFromPath (loadFromPath msg))
))
;//! \htmlinclude LoadRecognitionDB-response.msg.html

(cl:defclass <LoadRecognitionDB-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadRecognitionDB-response (<LoadRecognitionDB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadRecognitionDB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadRecognitionDB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<LoadRecognitionDB-response> is deprecated: use realsense_ros_person-srv:LoadRecognitionDB-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LoadRecognitionDB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadRecognitionDB-response>) ostream)
  "Serializes a message object of type '<LoadRecognitionDB-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadRecognitionDB-response>) istream)
  "Deserializes a message object of type '<LoadRecognitionDB-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadRecognitionDB-response>)))
  "Returns string type for a service object of type '<LoadRecognitionDB-response>"
  "realsense_ros_person/LoadRecognitionDBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadRecognitionDB-response)))
  "Returns string type for a service object of type 'LoadRecognitionDB-response"
  "realsense_ros_person/LoadRecognitionDBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadRecognitionDB-response>)))
  "Returns md5sum for a message object of type '<LoadRecognitionDB-response>"
  "1831e0f589127bcbfbf3f10b978cf7a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadRecognitionDB-response)))
  "Returns md5sum for a message object of type 'LoadRecognitionDB-response"
  "1831e0f589127bcbfbf3f10b978cf7a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadRecognitionDB-response>)))
  "Returns full string definition for message of type '<LoadRecognitionDB-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadRecognitionDB-response)))
  "Returns full string definition for message of type 'LoadRecognitionDB-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadRecognitionDB-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadRecognitionDB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadRecognitionDB-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadRecognitionDB)))
  'LoadRecognitionDB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadRecognitionDB)))
  'LoadRecognitionDB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadRecognitionDB)))
  "Returns string type for a service object of type '<LoadRecognitionDB>"
  "realsense_ros_person/LoadRecognitionDB")