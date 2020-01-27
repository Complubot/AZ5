; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude RecognitionRegister-request.msg.html

(cl:defclass <RecognitionRegister-request> (roslisp-msg-protocol:ros-message)
  ((personId
    :reader personId
    :initarg :personId
    :type cl:integer
    :initform 0))
)

(cl:defclass RecognitionRegister-request (<RecognitionRegister-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognitionRegister-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognitionRegister-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<RecognitionRegister-request> is deprecated: use realsense_ros_person-srv:RecognitionRegister-request instead.")))

(cl:ensure-generic-function 'personId-val :lambda-list '(m))
(cl:defmethod personId-val ((m <RecognitionRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:personId-val is deprecated.  Use realsense_ros_person-srv:personId instead.")
  (personId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognitionRegister-request>) ostream)
  "Serializes a message object of type '<RecognitionRegister-request>"
  (cl:let* ((signed (cl:slot-value msg 'personId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognitionRegister-request>) istream)
  "Deserializes a message object of type '<RecognitionRegister-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'personId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognitionRegister-request>)))
  "Returns string type for a service object of type '<RecognitionRegister-request>"
  "realsense_ros_person/RecognitionRegisterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognitionRegister-request)))
  "Returns string type for a service object of type 'RecognitionRegister-request"
  "realsense_ros_person/RecognitionRegisterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognitionRegister-request>)))
  "Returns md5sum for a message object of type '<RecognitionRegister-request>"
  "a15e83a449eea8ad719fcbd487f8e4ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognitionRegister-request)))
  "Returns md5sum for a message object of type 'RecognitionRegister-request"
  "a15e83a449eea8ad719fcbd487f8e4ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognitionRegister-request>)))
  "Returns full string definition for message of type '<RecognitionRegister-request>"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognitionRegister-request)))
  "Returns full string definition for message of type 'RecognitionRegister-request"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognitionRegister-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognitionRegister-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognitionRegister-request
    (cl:cons ':personId (personId msg))
))
;//! \htmlinclude RecognitionRegister-response.msg.html

(cl:defclass <RecognitionRegister-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (recognitionId
    :reader recognitionId
    :initarg :recognitionId
    :type cl:integer
    :initform 0))
)

(cl:defclass RecognitionRegister-response (<RecognitionRegister-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognitionRegister-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognitionRegister-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<RecognitionRegister-response> is deprecated: use realsense_ros_person-srv:RecognitionRegister-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RecognitionRegister-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'recognitionId-val :lambda-list '(m))
(cl:defmethod recognitionId-val ((m <RecognitionRegister-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:recognitionId-val is deprecated.  Use realsense_ros_person-srv:recognitionId instead.")
  (recognitionId m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecognitionRegister-response>)))
    "Constants for message type '<RecognitionRegister-response>"
  '((:REGISTRATION_SUCCESSFULL . 0)
    (:REGISTRATION_FAILED . 1)
    (:REGISTRATION_FAILED_ALREADY_REGISTERED . 2)
    (:REGISTRATION_FAILED_FACE_NOT_DETECTED . 3)
    (:REGISTRATION_FAILED_FACE_NOT_CLEAR . 4)
    (:REGISTRATION_FAILED_PERSON_TO_FAR . 5)
    (:REGISTRATION_FAILED_PERSON_TO_CLOSE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecognitionRegister-response)))
    "Constants for message type 'RecognitionRegister-response"
  '((:REGISTRATION_SUCCESSFULL . 0)
    (:REGISTRATION_FAILED . 1)
    (:REGISTRATION_FAILED_ALREADY_REGISTERED . 2)
    (:REGISTRATION_FAILED_FACE_NOT_DETECTED . 3)
    (:REGISTRATION_FAILED_FACE_NOT_CLEAR . 4)
    (:REGISTRATION_FAILED_PERSON_TO_FAR . 5)
    (:REGISTRATION_FAILED_PERSON_TO_CLOSE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognitionRegister-response>) ostream)
  "Serializes a message object of type '<RecognitionRegister-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'recognitionId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognitionRegister-response>) istream)
  "Deserializes a message object of type '<RecognitionRegister-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recognitionId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognitionRegister-response>)))
  "Returns string type for a service object of type '<RecognitionRegister-response>"
  "realsense_ros_person/RecognitionRegisterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognitionRegister-response)))
  "Returns string type for a service object of type 'RecognitionRegister-response"
  "realsense_ros_person/RecognitionRegisterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognitionRegister-response>)))
  "Returns md5sum for a message object of type '<RecognitionRegister-response>"
  "a15e83a449eea8ad719fcbd487f8e4ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognitionRegister-response)))
  "Returns md5sum for a message object of type 'RecognitionRegister-response"
  "a15e83a449eea8ad719fcbd487f8e4ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognitionRegister-response>)))
  "Returns full string definition for message of type '<RecognitionRegister-response>"
  (cl:format cl:nil "int32 status~%int32 recognitionId~%~%~%int32 REGISTRATION_SUCCESSFULL=0~%int32 REGISTRATION_FAILED=1~%int32 REGISTRATION_FAILED_ALREADY_REGISTERED=2~%int32 REGISTRATION_FAILED_FACE_NOT_DETECTED=3~%int32 REGISTRATION_FAILED_FACE_NOT_CLEAR=4~%int32 REGISTRATION_FAILED_PERSON_TO_FAR=5~%int32 REGISTRATION_FAILED_PERSON_TO_CLOSE=6~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognitionRegister-response)))
  "Returns full string definition for message of type 'RecognitionRegister-response"
  (cl:format cl:nil "int32 status~%int32 recognitionId~%~%~%int32 REGISTRATION_SUCCESSFULL=0~%int32 REGISTRATION_FAILED=1~%int32 REGISTRATION_FAILED_ALREADY_REGISTERED=2~%int32 REGISTRATION_FAILED_FACE_NOT_DETECTED=3~%int32 REGISTRATION_FAILED_FACE_NOT_CLEAR=4~%int32 REGISTRATION_FAILED_PERSON_TO_FAR=5~%int32 REGISTRATION_FAILED_PERSON_TO_CLOSE=6~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognitionRegister-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognitionRegister-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognitionRegister-response
    (cl:cons ':status (status msg))
    (cl:cons ':recognitionId (recognitionId msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognitionRegister)))
  'RecognitionRegister-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognitionRegister)))
  'RecognitionRegister-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognitionRegister)))
  "Returns string type for a service object of type '<RecognitionRegister>"
  "realsense_ros_person/RecognitionRegister")