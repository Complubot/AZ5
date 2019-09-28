; Auto-generated. Do not edit!


(cl:in-package az5-msg)


;//! \htmlinclude motor_state.msg.html

(cl:defclass <motor_state> (roslisp-msg-protocol:ros-message)
  ((M1
    :reader M1
    :initarg :M1
    :type cl:boolean
    :initform cl:nil)
   (M2
    :reader M2
    :initarg :M2
    :type cl:boolean
    :initform cl:nil)
   (M3
    :reader M3
    :initarg :M3
    :type cl:boolean
    :initform cl:nil)
   (M4
    :reader M4
    :initarg :M4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass motor_state (<motor_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name az5-msg:<motor_state> is deprecated: use az5-msg:motor_state instead.")))

(cl:ensure-generic-function 'M1-val :lambda-list '(m))
(cl:defmethod M1-val ((m <motor_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:M1-val is deprecated.  Use az5-msg:M1 instead.")
  (M1 m))

(cl:ensure-generic-function 'M2-val :lambda-list '(m))
(cl:defmethod M2-val ((m <motor_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:M2-val is deprecated.  Use az5-msg:M2 instead.")
  (M2 m))

(cl:ensure-generic-function 'M3-val :lambda-list '(m))
(cl:defmethod M3-val ((m <motor_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:M3-val is deprecated.  Use az5-msg:M3 instead.")
  (M3 m))

(cl:ensure-generic-function 'M4-val :lambda-list '(m))
(cl:defmethod M4-val ((m <motor_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:M4-val is deprecated.  Use az5-msg:M4 instead.")
  (M4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_state>) ostream)
  "Serializes a message object of type '<motor_state>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'M1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'M2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'M3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'M4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_state>) istream)
  "Deserializes a message object of type '<motor_state>"
    (cl:setf (cl:slot-value msg 'M1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'M2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'M3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'M4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_state>)))
  "Returns string type for a message object of type '<motor_state>"
  "az5/motor_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_state)))
  "Returns string type for a message object of type 'motor_state"
  "az5/motor_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_state>)))
  "Returns md5sum for a message object of type '<motor_state>"
  "a7108cdd472cdbecdeda4bfb217c695c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_state)))
  "Returns md5sum for a message object of type 'motor_state"
  "a7108cdd472cdbecdeda4bfb217c695c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_state>)))
  "Returns full string definition for message of type '<motor_state>"
  (cl:format cl:nil "bool M1~%bool M2~%bool M3~%bool M4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_state)))
  "Returns full string definition for message of type 'motor_state"
  (cl:format cl:nil "bool M1~%bool M2~%bool M3~%bool M4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_state>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_state>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_state
    (cl:cons ':M1 (M1 msg))
    (cl:cons ':M2 (M2 msg))
    (cl:cons ':M3 (M3 msg))
    (cl:cons ':M4 (M4 msg))
))
