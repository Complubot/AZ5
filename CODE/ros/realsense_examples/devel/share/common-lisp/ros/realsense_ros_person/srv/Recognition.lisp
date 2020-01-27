; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude Recognition-request.msg.html

(cl:defclass <Recognition-request> (roslisp-msg-protocol:ros-message)
  ((personId
    :reader personId
    :initarg :personId
    :type cl:integer
    :initform 0))
)

(cl:defclass Recognition-request (<Recognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<Recognition-request> is deprecated: use realsense_ros_person-srv:Recognition-request instead.")))

(cl:ensure-generic-function 'personId-val :lambda-list '(m))
(cl:defmethod personId-val ((m <Recognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:personId-val is deprecated.  Use realsense_ros_person-srv:personId instead.")
  (personId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognition-request>) ostream)
  "Serializes a message object of type '<Recognition-request>"
  (cl:let* ((signed (cl:slot-value msg 'personId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognition-request>) istream)
  "Deserializes a message object of type '<Recognition-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'personId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognition-request>)))
  "Returns string type for a service object of type '<Recognition-request>"
  "realsense_ros_person/RecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognition-request)))
  "Returns string type for a service object of type 'Recognition-request"
  "realsense_ros_person/RecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognition-request>)))
  "Returns md5sum for a message object of type '<Recognition-request>"
  "2dd06767416b8aa59aeaa12368ef46df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognition-request)))
  "Returns md5sum for a message object of type 'Recognition-request"
  "2dd06767416b8aa59aeaa12368ef46df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognition-request>)))
  "Returns full string definition for message of type '<Recognition-request>"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognition-request)))
  "Returns full string definition for message of type 'Recognition-request"
  (cl:format cl:nil "int32 personId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognition-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognition-request
    (cl:cons ':personId (personId msg))
))
;//! \htmlinclude Recognition-response.msg.html

(cl:defclass <Recognition-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (recognitionId
    :reader recognitionId
    :initarg :recognitionId
    :type cl:integer
    :initform 0)
   (similarityScore
    :reader similarityScore
    :initarg :similarityScore
    :type cl:float
    :initform 0.0))
)

(cl:defclass Recognition-response (<Recognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<Recognition-response> is deprecated: use realsense_ros_person-srv:Recognition-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Recognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'recognitionId-val :lambda-list '(m))
(cl:defmethod recognitionId-val ((m <Recognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:recognitionId-val is deprecated.  Use realsense_ros_person-srv:recognitionId instead.")
  (recognitionId m))

(cl:ensure-generic-function 'similarityScore-val :lambda-list '(m))
(cl:defmethod similarityScore-val ((m <Recognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:similarityScore-val is deprecated.  Use realsense_ros_person-srv:similarityScore instead.")
  (similarityScore m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Recognition-response>)))
    "Constants for message type '<Recognition-response>"
  '((:RECOGNITION_PASSED_PERSON_RECOGNIZED . 0)
    (:RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED . 1)
    (:RECOGNITION_FAILED . 2)
    (:RECOGNITION_FAILED_FACE_NOT_DETECTED . 3)
    (:RECOGNITION_FAILED_FACE_NOT_CLEAR . 4)
    (:RECOGNITION_FAILED_PERSON_TOO_FAR . 5)
    (:RECOGNITION_FAILED_PERSON_TOO_CLOSE . 6)
    (:RECOGNITION_FAILED_FACE_AMBIGUITY . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Recognition-response)))
    "Constants for message type 'Recognition-response"
  '((:RECOGNITION_PASSED_PERSON_RECOGNIZED . 0)
    (:RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED . 1)
    (:RECOGNITION_FAILED . 2)
    (:RECOGNITION_FAILED_FACE_NOT_DETECTED . 3)
    (:RECOGNITION_FAILED_FACE_NOT_CLEAR . 4)
    (:RECOGNITION_FAILED_PERSON_TOO_FAR . 5)
    (:RECOGNITION_FAILED_PERSON_TOO_CLOSE . 6)
    (:RECOGNITION_FAILED_FACE_AMBIGUITY . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognition-response>) ostream)
  "Serializes a message object of type '<Recognition-response>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'similarityScore))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognition-response>) istream)
  "Deserializes a message object of type '<Recognition-response>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'similarityScore) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognition-response>)))
  "Returns string type for a service object of type '<Recognition-response>"
  "realsense_ros_person/RecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognition-response)))
  "Returns string type for a service object of type 'Recognition-response"
  "realsense_ros_person/RecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognition-response>)))
  "Returns md5sum for a message object of type '<Recognition-response>"
  "2dd06767416b8aa59aeaa12368ef46df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognition-response)))
  "Returns md5sum for a message object of type 'Recognition-response"
  "2dd06767416b8aa59aeaa12368ef46df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognition-response>)))
  "Returns full string definition for message of type '<Recognition-response>"
  (cl:format cl:nil "int32 status~%int32 recognitionId~%float32 similarityScore~%~%~%int32 RECOGNITION_PASSED_PERSON_RECOGNIZED=0~%int32 RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED=1~%int32 RECOGNITION_FAILED=2~%int32 RECOGNITION_FAILED_FACE_NOT_DETECTED=3~%int32 RECOGNITION_FAILED_FACE_NOT_CLEAR=4~%int32 RECOGNITION_FAILED_PERSON_TOO_FAR=5~%int32 RECOGNITION_FAILED_PERSON_TOO_CLOSE=6~%int32 RECOGNITION_FAILED_FACE_AMBIGUITY=7~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognition-response)))
  "Returns full string definition for message of type 'Recognition-response"
  (cl:format cl:nil "int32 status~%int32 recognitionId~%float32 similarityScore~%~%~%int32 RECOGNITION_PASSED_PERSON_RECOGNIZED=0~%int32 RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED=1~%int32 RECOGNITION_FAILED=2~%int32 RECOGNITION_FAILED_FACE_NOT_DETECTED=3~%int32 RECOGNITION_FAILED_FACE_NOT_CLEAR=4~%int32 RECOGNITION_FAILED_PERSON_TOO_FAR=5~%int32 RECOGNITION_FAILED_PERSON_TOO_CLOSE=6~%int32 RECOGNITION_FAILED_FACE_AMBIGUITY=7~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognition-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognition-response
    (cl:cons ':status (status msg))
    (cl:cons ':recognitionId (recognitionId msg))
    (cl:cons ':similarityScore (similarityScore msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Recognition)))
  'Recognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Recognition)))
  'Recognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognition)))
  "Returns string type for a service object of type '<Recognition>"
  "realsense_ros_person/Recognition")