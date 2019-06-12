; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude raw_controller.msg.html

(cl:defclass <raw_controller> (roslisp-msg-protocol:ros-message)
  ((RX
    :reader RX
    :initarg :RX
    :type cl:integer
    :initform 0)
   (RY
    :reader RY
    :initarg :RY
    :type cl:integer
    :initform 0)
   (LX
    :reader LX
    :initarg :LX
    :type cl:integer
    :initform 0)
   (LY
    :reader LY
    :initarg :LY
    :type cl:integer
    :initform 0))
)

(cl:defclass raw_controller (<raw_controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <raw_controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'raw_controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<raw_controller> is deprecated: use controller-msg:raw_controller instead.")))

(cl:ensure-generic-function 'RX-val :lambda-list '(m))
(cl:defmethod RX-val ((m <raw_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:RX-val is deprecated.  Use controller-msg:RX instead.")
  (RX m))

(cl:ensure-generic-function 'RY-val :lambda-list '(m))
(cl:defmethod RY-val ((m <raw_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:RY-val is deprecated.  Use controller-msg:RY instead.")
  (RY m))

(cl:ensure-generic-function 'LX-val :lambda-list '(m))
(cl:defmethod LX-val ((m <raw_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:LX-val is deprecated.  Use controller-msg:LX instead.")
  (LX m))

(cl:ensure-generic-function 'LY-val :lambda-list '(m))
(cl:defmethod LY-val ((m <raw_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:LY-val is deprecated.  Use controller-msg:LY instead.")
  (LY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <raw_controller>) ostream)
  "Serializes a message object of type '<raw_controller>"
  (cl:let* ((signed (cl:slot-value msg 'RX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <raw_controller>) istream)
  "Deserializes a message object of type '<raw_controller>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<raw_controller>)))
  "Returns string type for a message object of type '<raw_controller>"
  "controller/raw_controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'raw_controller)))
  "Returns string type for a message object of type 'raw_controller"
  "controller/raw_controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<raw_controller>)))
  "Returns md5sum for a message object of type '<raw_controller>"
  "28b3e8ea28833e842fbdd2e937cb7542")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'raw_controller)))
  "Returns md5sum for a message object of type 'raw_controller"
  "28b3e8ea28833e842fbdd2e937cb7542")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<raw_controller>)))
  "Returns full string definition for message of type '<raw_controller>"
  (cl:format cl:nil "int32 RX~%int32 RY~%int32 LX~%int32 LY~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'raw_controller)))
  "Returns full string definition for message of type 'raw_controller"
  (cl:format cl:nil "int32 RX~%int32 RY~%int32 LX~%int32 LY~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <raw_controller>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <raw_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'raw_controller
    (cl:cons ':RX (RX msg))
    (cl:cons ':RY (RY msg))
    (cl:cons ':LX (LX msg))
    (cl:cons ':LY (LY msg))
))
