; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude Wave.msg.html

(cl:defclass <Wave> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass Wave (<Wave>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wave>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wave)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<Wave> is deprecated: use realsense_ros_person-msg:Wave instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:type-val is deprecated.  Use realsense_ros_person-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Wave>)))
    "Constants for message type '<Wave>"
  '((:WAVE_NOT_DETECTED . -1)
    (:WAVE_LEFT_LA . 1)
    (:WAVE_RIGHT_LA . 2)
    (:WAVE_LEFT_RA . 3)
    (:WAVE_RIGHT_RA . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Wave)))
    "Constants for message type 'Wave"
  '((:WAVE_NOT_DETECTED . -1)
    (:WAVE_LEFT_LA . 1)
    (:WAVE_RIGHT_LA . 2)
    (:WAVE_LEFT_RA . 3)
    (:WAVE_RIGHT_RA . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wave>) ostream)
  "Serializes a message object of type '<Wave>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wave>) istream)
  "Deserializes a message object of type '<Wave>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wave>)))
  "Returns string type for a message object of type '<Wave>"
  "realsense_ros_person/Wave")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wave)))
  "Returns string type for a message object of type 'Wave"
  "realsense_ros_person/Wave")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wave>)))
  "Returns md5sum for a message object of type '<Wave>"
  "bf1a205054ef9c51f0b3b2426adfe39a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wave)))
  "Returns md5sum for a message object of type 'Wave"
  "bf1a205054ef9c51f0b3b2426adfe39a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wave>)))
  "Returns full string definition for message of type '<Wave>"
  (cl:format cl:nil "int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wave)))
  "Returns full string definition for message of type 'Wave"
  (cl:format cl:nil "int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wave>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wave>))
  "Converts a ROS message object to a list"
  (cl:list 'Wave
    (cl:cons ':type (type msg))
))
