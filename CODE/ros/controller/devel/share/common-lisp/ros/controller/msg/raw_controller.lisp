; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude raw_controller.msg.html

(cl:defclass <raw_controller> (roslisp-msg-protocol:ros-message)
  ((RX
    :reader RX
    :initarg :RX
    :type cl:fixnum
    :initform 0)
   (RY
    :reader RY
    :initarg :RY
    :type cl:fixnum
    :initform 0)
   (LX
    :reader LX
    :initarg :LX
    :type cl:fixnum
    :initform 0)
   (LY
    :reader LY
    :initarg :LY
    :type cl:fixnum
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
  (cl:let* ((signed (cl:slot-value msg 'RX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <raw_controller>) istream)
  "Deserializes a message object of type '<raw_controller>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RX) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RY) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LX) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LY) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
  "261f1b7f011b5fc47b397e357aa3b674")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'raw_controller)))
  "Returns md5sum for a message object of type 'raw_controller"
  "261f1b7f011b5fc47b397e357aa3b674")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<raw_controller>)))
  "Returns full string definition for message of type '<raw_controller>"
  (cl:format cl:nil "int8 RX~%int8 RY~%int8 LX~%int8 LY~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'raw_controller)))
  "Returns full string definition for message of type 'raw_controller"
  (cl:format cl:nil "int8 RX~%int8 RY~%int8 LX~%int8 LY~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <raw_controller>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <raw_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'raw_controller
    (cl:cons ':RX (RX msg))
    (cl:cons ':RY (RY msg))
    (cl:cons ':LX (LX msg))
    (cl:cons ':LY (LY msg))
))
