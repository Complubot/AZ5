; Auto-generated. Do not edit!


(cl:in-package controller-msg)


;//! \htmlinclude bumpers.msg.html

(cl:defclass <bumpers> (roslisp-msg-protocol:ros-message)
  ((LEFT
    :reader LEFT
    :initarg :LEFT
    :type cl:boolean
    :initform cl:nil)
   (RIGHT
    :reader RIGHT
    :initarg :RIGHT
    :type cl:boolean
    :initform cl:nil)
   (FRONT
    :reader FRONT
    :initarg :FRONT
    :type cl:boolean
    :initform cl:nil)
   (BACK
    :reader BACK
    :initarg :BACK
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bumpers (<bumpers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bumpers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bumpers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller-msg:<bumpers> is deprecated: use controller-msg:bumpers instead.")))

(cl:ensure-generic-function 'LEFT-val :lambda-list '(m))
(cl:defmethod LEFT-val ((m <bumpers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:LEFT-val is deprecated.  Use controller-msg:LEFT instead.")
  (LEFT m))

(cl:ensure-generic-function 'RIGHT-val :lambda-list '(m))
(cl:defmethod RIGHT-val ((m <bumpers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:RIGHT-val is deprecated.  Use controller-msg:RIGHT instead.")
  (RIGHT m))

(cl:ensure-generic-function 'FRONT-val :lambda-list '(m))
(cl:defmethod FRONT-val ((m <bumpers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:FRONT-val is deprecated.  Use controller-msg:FRONT instead.")
  (FRONT m))

(cl:ensure-generic-function 'BACK-val :lambda-list '(m))
(cl:defmethod BACK-val ((m <bumpers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller-msg:BACK-val is deprecated.  Use controller-msg:BACK instead.")
  (BACK m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bumpers>) ostream)
  "Serializes a message object of type '<bumpers>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LEFT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RIGHT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'FRONT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'BACK) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bumpers>) istream)
  "Deserializes a message object of type '<bumpers>"
    (cl:setf (cl:slot-value msg 'LEFT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RIGHT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'FRONT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'BACK) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bumpers>)))
  "Returns string type for a message object of type '<bumpers>"
  "controller/bumpers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bumpers)))
  "Returns string type for a message object of type 'bumpers"
  "controller/bumpers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bumpers>)))
  "Returns md5sum for a message object of type '<bumpers>"
  "4b9e708bc1320c04ab698dfe0ba605f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bumpers)))
  "Returns md5sum for a message object of type 'bumpers"
  "4b9e708bc1320c04ab698dfe0ba605f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bumpers>)))
  "Returns full string definition for message of type '<bumpers>"
  (cl:format cl:nil "bool LEFT~%bool RIGHT~%bool FRONT~%bool BACK~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bumpers)))
  "Returns full string definition for message of type 'bumpers"
  (cl:format cl:nil "bool LEFT~%bool RIGHT~%bool FRONT~%bool BACK~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bumpers>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bumpers>))
  "Converts a ROS message object to a list"
  (cl:list 'bumpers
    (cl:cons ':LEFT (LEFT msg))
    (cl:cons ':RIGHT (RIGHT msg))
    (cl:cons ':FRONT (FRONT msg))
    (cl:cons ':BACK (BACK msg))
))
