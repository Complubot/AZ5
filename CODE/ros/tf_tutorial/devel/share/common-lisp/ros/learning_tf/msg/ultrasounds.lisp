; Auto-generated. Do not edit!


(cl:in-package learning_tf-msg)


;//! \htmlinclude ultrasounds.msg.html

(cl:defclass <ultrasounds> (roslisp-msg-protocol:ros-message)
  ((measurements
    :reader measurements
    :initarg :measurements
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ultrasounds (<ultrasounds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasounds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasounds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_tf-msg:<ultrasounds> is deprecated: use learning_tf-msg:ultrasounds instead.")))

(cl:ensure-generic-function 'measurements-val :lambda-list '(m))
(cl:defmethod measurements-val ((m <ultrasounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_tf-msg:measurements-val is deprecated.  Use learning_tf-msg:measurements instead.")
  (measurements m))
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'measurements))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasounds>) istream)
  "Deserializes a message object of type '<ultrasounds>"
  (cl:setf (cl:slot-value msg 'measurements) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'measurements)))
    (cl:dotimes (i 16)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasounds>)))
  "Returns string type for a message object of type '<ultrasounds>"
  "learning_tf/ultrasounds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasounds)))
  "Returns string type for a message object of type 'ultrasounds"
  "learning_tf/ultrasounds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasounds>)))
  "Returns md5sum for a message object of type '<ultrasounds>"
  "09e96d0ffc1d31ca0f72f6408aaa1e7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasounds)))
  "Returns md5sum for a message object of type 'ultrasounds"
  "09e96d0ffc1d31ca0f72f6408aaa1e7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasounds>)))
  "Returns full string definition for message of type '<ultrasounds>"
  (cl:format cl:nil "int32[16] measurements~%int32 length = 16~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasounds)))
  "Returns full string definition for message of type 'ultrasounds"
  (cl:format cl:nil "int32[16] measurements~%int32 length = 16~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasounds>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'measurements) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasounds>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasounds
    (cl:cons ':measurements (measurements msg))
))
