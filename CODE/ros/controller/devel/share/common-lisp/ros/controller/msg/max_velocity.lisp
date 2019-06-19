; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude max_velocity.msg.html

(cl:defclass <max_velocity> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass max_velocity (<max_velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <max_velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'max_velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<max_velocity> is deprecated: use controller-msg:max_velocity instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <max_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:data-val is deprecated.  Use controller-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<max_velocity>)))
    "Constants for message type '<max_velocity>"
  '((:LENGTH . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'max_velocity)))
    "Constants for message type 'max_velocity"
  '((:LENGTH . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <max_velocity>) ostream)
  "Serializes a message object of type '<max_velocity>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <max_velocity>) istream)
  "Deserializes a message object of type '<max_velocity>"
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 16)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<max_velocity>)))
  "Returns string type for a message object of type '<max_velocity>"
  "controller/max_velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'max_velocity)))
  "Returns string type for a message object of type 'max_velocity"
  "controller/max_velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<max_velocity>)))
  "Returns md5sum for a message object of type '<max_velocity>"
  "86cf59839b89372f0df8b1565cb79615")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'max_velocity)))
  "Returns md5sum for a message object of type 'max_velocity"
  "86cf59839b89372f0df8b1565cb79615")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<max_velocity>)))
  "Returns full string definition for message of type '<max_velocity>"
  (cl:format cl:nil "int32[16] data~%int32 length = 16~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'max_velocity)))
  "Returns full string definition for message of type 'max_velocity"
  (cl:format cl:nil "int32[16] data~%int32 length = 16~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <max_velocity>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <max_velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'max_velocity
    (cl:cons ':data (data msg))
))
