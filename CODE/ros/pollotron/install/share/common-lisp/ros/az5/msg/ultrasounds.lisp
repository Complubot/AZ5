; Auto-generated. Do not edit!


(cl:in-package az5-msg)


;//! \htmlinclude ultrasounds.msg.html

(cl:defclass <ultrasounds> (roslisp-msg-protocol:ros-message)
  ((us
    :reader us
    :initarg :us
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass ultrasounds (<ultrasounds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasounds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasounds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name az5-msg:<ultrasounds> is deprecated: use az5-msg:ultrasounds instead.")))

(cl:ensure-generic-function 'us-val :lambda-list '(m))
(cl:defmethod us-val ((m <ultrasounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:us-val is deprecated.  Use az5-msg:us instead.")
  (us m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ultrasounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:value-val is deprecated.  Use az5-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ultrasounds>)))
    "Constants for message type '<ultrasounds>"
  '((:LENGTH . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ultrasounds)))
    "Constants for message type 'ultrasounds"
  '((:LENGTH . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasounds>) ostream)
  "Serializes a message object of type '<ultrasounds>"
  (cl:let* ((signed (cl:slot-value msg 'us)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasounds>) istream)
  "Deserializes a message object of type '<ultrasounds>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'us) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasounds>)))
  "Returns string type for a message object of type '<ultrasounds>"
  "az5/ultrasounds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasounds)))
  "Returns string type for a message object of type 'ultrasounds"
  "az5/ultrasounds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasounds>)))
  "Returns md5sum for a message object of type '<ultrasounds>"
  "1e30bc51109991e924faa9021922381b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasounds)))
  "Returns md5sum for a message object of type 'ultrasounds"
  "1e30bc51109991e924faa9021922381b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasounds>)))
  "Returns full string definition for message of type '<ultrasounds>"
  (cl:format cl:nil "int32 us~%int32 value~%int32 length = 16~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasounds)))
  "Returns full string definition for message of type 'ultrasounds"
  (cl:format cl:nil "int32 us~%int32 value~%int32 length = 16~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasounds>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasounds>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasounds
    (cl:cons ':us (us msg))
    (cl:cons ':value (value msg))
))
