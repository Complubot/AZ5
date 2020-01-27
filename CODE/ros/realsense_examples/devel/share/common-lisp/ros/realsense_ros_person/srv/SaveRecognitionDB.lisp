; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude SaveRecognitionDB-request.msg.html

(cl:defclass <SaveRecognitionDB-request> (roslisp-msg-protocol:ros-message)
  ((saveToPath
    :reader saveToPath
    :initarg :saveToPath
    :type cl:string
    :initform ""))
)

(cl:defclass SaveRecognitionDB-request (<SaveRecognitionDB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRecognitionDB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRecognitionDB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<SaveRecognitionDB-request> is deprecated: use realsense_ros_person-srv:SaveRecognitionDB-request instead.")))

(cl:ensure-generic-function 'saveToPath-val :lambda-list '(m))
(cl:defmethod saveToPath-val ((m <SaveRecognitionDB-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:saveToPath-val is deprecated.  Use realsense_ros_person-srv:saveToPath instead.")
  (saveToPath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRecognitionDB-request>) ostream)
  "Serializes a message object of type '<SaveRecognitionDB-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'saveToPath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'saveToPath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRecognitionDB-request>) istream)
  "Deserializes a message object of type '<SaveRecognitionDB-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saveToPath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'saveToPath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRecognitionDB-request>)))
  "Returns string type for a service object of type '<SaveRecognitionDB-request>"
  "realsense_ros_person/SaveRecognitionDBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecognitionDB-request)))
  "Returns string type for a service object of type 'SaveRecognitionDB-request"
  "realsense_ros_person/SaveRecognitionDBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRecognitionDB-request>)))
  "Returns md5sum for a message object of type '<SaveRecognitionDB-request>"
  "1de971d723014a924e8ac6f15d9d1728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRecognitionDB-request)))
  "Returns md5sum for a message object of type 'SaveRecognitionDB-request"
  "1de971d723014a924e8ac6f15d9d1728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRecognitionDB-request>)))
  "Returns full string definition for message of type '<SaveRecognitionDB-request>"
  (cl:format cl:nil "string saveToPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRecognitionDB-request)))
  "Returns full string definition for message of type 'SaveRecognitionDB-request"
  (cl:format cl:nil "string saveToPath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRecognitionDB-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'saveToPath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRecognitionDB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRecognitionDB-request
    (cl:cons ':saveToPath (saveToPath msg))
))
;//! \htmlinclude SaveRecognitionDB-response.msg.html

(cl:defclass <SaveRecognitionDB-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveRecognitionDB-response (<SaveRecognitionDB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRecognitionDB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRecognitionDB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<SaveRecognitionDB-response> is deprecated: use realsense_ros_person-srv:SaveRecognitionDB-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SaveRecognitionDB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRecognitionDB-response>) ostream)
  "Serializes a message object of type '<SaveRecognitionDB-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRecognitionDB-response>) istream)
  "Deserializes a message object of type '<SaveRecognitionDB-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRecognitionDB-response>)))
  "Returns string type for a service object of type '<SaveRecognitionDB-response>"
  "realsense_ros_person/SaveRecognitionDBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecognitionDB-response)))
  "Returns string type for a service object of type 'SaveRecognitionDB-response"
  "realsense_ros_person/SaveRecognitionDBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRecognitionDB-response>)))
  "Returns md5sum for a message object of type '<SaveRecognitionDB-response>"
  "1de971d723014a924e8ac6f15d9d1728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRecognitionDB-response)))
  "Returns md5sum for a message object of type 'SaveRecognitionDB-response"
  "1de971d723014a924e8ac6f15d9d1728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRecognitionDB-response>)))
  "Returns full string definition for message of type '<SaveRecognitionDB-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRecognitionDB-response)))
  "Returns full string definition for message of type 'SaveRecognitionDB-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRecognitionDB-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRecognitionDB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRecognitionDB-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveRecognitionDB)))
  'SaveRecognitionDB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveRecognitionDB)))
  'SaveRecognitionDB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecognitionDB)))
  "Returns string type for a service object of type '<SaveRecognitionDB>"
  "realsense_ros_person/SaveRecognitionDB")