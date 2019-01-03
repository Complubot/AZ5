; Auto-generated. Do not edit!


(cl:in-package client_server-msg)


;//! \htmlinclude action.msg.html

(cl:defclass <action> (roslisp-msg-protocol:ros-message)
  ((operation
    :reader operation
    :initarg :operation
    :type cl:string
    :initform "")
   (value1
    :reader value1
    :initarg :value1
    :type cl:integer
    :initform 0)
   (value2
    :reader value2
    :initarg :value2
    :type cl:integer
    :initform 0))
)

(cl:defclass action (<action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_server-msg:<action> is deprecated: use client_server-msg:action instead.")))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-msg:operation-val is deprecated.  Use client_server-msg:operation instead.")
  (operation m))

(cl:ensure-generic-function 'value1-val :lambda-list '(m))
(cl:defmethod value1-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-msg:value1-val is deprecated.  Use client_server-msg:value1 instead.")
  (value1 m))

(cl:ensure-generic-function 'value2-val :lambda-list '(m))
(cl:defmethod value2-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-msg:value2-val is deprecated.  Use client_server-msg:value2 instead.")
  (value2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action>) ostream)
  "Serializes a message object of type '<action>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation))
  (cl:let* ((signed (cl:slot-value msg 'value1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action>) istream)
  "Deserializes a message object of type '<action>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action>)))
  "Returns string type for a message object of type '<action>"
  "client_server/action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action)))
  "Returns string type for a message object of type 'action"
  "client_server/action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action>)))
  "Returns md5sum for a message object of type '<action>"
  "b0f8ef50d1afac2c867664742531f0ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action)))
  "Returns md5sum for a message object of type 'action"
  "b0f8ef50d1afac2c867664742531f0ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action>)))
  "Returns full string definition for message of type '<action>"
  (cl:format cl:nil "string operation~%int64 value1~%int64 value2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action)))
  "Returns full string definition for message of type 'action"
  (cl:format cl:nil "string operation~%int64 value1~%int64 value2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'operation))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action>))
  "Converts a ROS message object to a list"
  (cl:list 'action
    (cl:cons ':operation (operation msg))
    (cl:cons ':value1 (value1 msg))
    (cl:cons ':value2 (value2 msg))
))
