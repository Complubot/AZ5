; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude buttons.msg.html

(cl:defclass <buttons> (roslisp-msg-protocol:ros-message)
  ((TRIANGLE
    :reader TRIANGLE
    :initarg :TRIANGLE
    :type cl:boolean
    :initform cl:nil)
   (CIRCLE
    :reader CIRCLE
    :initarg :CIRCLE
    :type cl:boolean
    :initform cl:nil)
   (SQUARE
    :reader SQUARE
    :initarg :SQUARE
    :type cl:boolean
    :initform cl:nil)
   (CROSS
    :reader CROSS
    :initarg :CROSS
    :type cl:boolean
    :initform cl:nil)
   (UP
    :reader UP
    :initarg :UP
    :type cl:boolean
    :initform cl:nil)
   (DOWN
    :reader DOWN
    :initarg :DOWN
    :type cl:boolean
    :initform cl:nil)
   (LEFT
    :reader LEFT
    :initarg :LEFT
    :type cl:boolean
    :initform cl:nil)
   (RIGHT
    :reader RIGHT
    :initarg :RIGHT
    :type cl:boolean
    :initform cl:nil)
   (R1
    :reader R1
    :initarg :R1
    :type cl:boolean
    :initform cl:nil)
   (R2
    :reader R2
    :initarg :R2
    :type cl:boolean
    :initform cl:nil)
   (L1
    :reader L1
    :initarg :L1
    :type cl:boolean
    :initform cl:nil)
   (L2
    :reader L2
    :initarg :L2
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass buttons (<buttons>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <buttons>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'buttons)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<buttons> is deprecated: use controller-msg:buttons instead.")))

(cl:ensure-generic-function 'TRIANGLE-val :lambda-list '(m))
(cl:defmethod TRIANGLE-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:TRIANGLE-val is deprecated.  Use controller-msg:TRIANGLE instead.")
  (TRIANGLE m))

(cl:ensure-generic-function 'CIRCLE-val :lambda-list '(m))
(cl:defmethod CIRCLE-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:CIRCLE-val is deprecated.  Use controller-msg:CIRCLE instead.")
  (CIRCLE m))

(cl:ensure-generic-function 'SQUARE-val :lambda-list '(m))
(cl:defmethod SQUARE-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:SQUARE-val is deprecated.  Use controller-msg:SQUARE instead.")
  (SQUARE m))

(cl:ensure-generic-function 'CROSS-val :lambda-list '(m))
(cl:defmethod CROSS-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:CROSS-val is deprecated.  Use controller-msg:CROSS instead.")
  (CROSS m))

(cl:ensure-generic-function 'UP-val :lambda-list '(m))
(cl:defmethod UP-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:UP-val is deprecated.  Use controller-msg:UP instead.")
  (UP m))

(cl:ensure-generic-function 'DOWN-val :lambda-list '(m))
(cl:defmethod DOWN-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:DOWN-val is deprecated.  Use controller-msg:DOWN instead.")
  (DOWN m))

(cl:ensure-generic-function 'LEFT-val :lambda-list '(m))
(cl:defmethod LEFT-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:LEFT-val is deprecated.  Use controller-msg:LEFT instead.")
  (LEFT m))

(cl:ensure-generic-function 'RIGHT-val :lambda-list '(m))
(cl:defmethod RIGHT-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:RIGHT-val is deprecated.  Use controller-msg:RIGHT instead.")
  (RIGHT m))

(cl:ensure-generic-function 'R1-val :lambda-list '(m))
(cl:defmethod R1-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:R1-val is deprecated.  Use controller-msg:R1 instead.")
  (R1 m))

(cl:ensure-generic-function 'R2-val :lambda-list '(m))
(cl:defmethod R2-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:R2-val is deprecated.  Use controller-msg:R2 instead.")
  (R2 m))

(cl:ensure-generic-function 'L1-val :lambda-list '(m))
(cl:defmethod L1-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:L1-val is deprecated.  Use controller-msg:L1 instead.")
  (L1 m))

(cl:ensure-generic-function 'L2-val :lambda-list '(m))
(cl:defmethod L2-val ((m <buttons>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:L2-val is deprecated.  Use controller-msg:L2 instead.")
  (L2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <buttons>) ostream)
  "Serializes a message object of type '<buttons>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TRIANGLE) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CIRCLE) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SQUARE) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CROSS) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'UP) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'DOWN) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LEFT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RIGHT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'R2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'L1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'L2) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <buttons>) istream)
  "Deserializes a message object of type '<buttons>"
    (cl:setf (cl:slot-value msg 'TRIANGLE) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CIRCLE) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SQUARE) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CROSS) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'UP) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'DOWN) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LEFT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RIGHT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'R2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'L1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'L2) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<buttons>)))
  "Returns string type for a message object of type '<buttons>"
  "controller/buttons")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'buttons)))
  "Returns string type for a message object of type 'buttons"
  "controller/buttons")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<buttons>)))
  "Returns md5sum for a message object of type '<buttons>"
  "7013f4c34338e575015a24a638b00725")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'buttons)))
  "Returns md5sum for a message object of type 'buttons"
  "7013f4c34338e575015a24a638b00725")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<buttons>)))
  "Returns full string definition for message of type '<buttons>"
  (cl:format cl:nil "bool TRIANGLE~%bool CIRCLE~%bool SQUARE~%bool CROSS~%~%bool UP~%bool DOWN~%bool LEFT~%bool RIGHT~%~%~%bool R1~%bool R2~%bool L1~%bool L2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'buttons)))
  "Returns full string definition for message of type 'buttons"
  (cl:format cl:nil "bool TRIANGLE~%bool CIRCLE~%bool SQUARE~%bool CROSS~%~%bool UP~%bool DOWN~%bool LEFT~%bool RIGHT~%~%~%bool R1~%bool R2~%bool L1~%bool L2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <buttons>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <buttons>))
  "Converts a ROS message object to a list"
  (cl:list 'buttons
    (cl:cons ':TRIANGLE (TRIANGLE msg))
    (cl:cons ':CIRCLE (CIRCLE msg))
    (cl:cons ':SQUARE (SQUARE msg))
    (cl:cons ':CROSS (CROSS msg))
    (cl:cons ':UP (UP msg))
    (cl:cons ':DOWN (DOWN msg))
    (cl:cons ':LEFT (LEFT msg))
    (cl:cons ':RIGHT (RIGHT msg))
    (cl:cons ':R1 (R1 msg))
    (cl:cons ':R2 (R2 msg))
    (cl:cons ':L1 (L1 msg))
    (cl:cons ':L2 (L2 msg))
))
