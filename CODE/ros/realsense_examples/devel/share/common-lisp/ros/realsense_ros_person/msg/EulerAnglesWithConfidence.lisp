; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude EulerAnglesWithConfidence.msg.html

(cl:defclass <EulerAnglesWithConfidence> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type realsense_ros_person-msg:EulerAngles
    :initform (cl:make-instance 'realsense_ros_person-msg:EulerAngles))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:integer
    :initform 0))
)

(cl:defclass EulerAnglesWithConfidence (<EulerAnglesWithConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAnglesWithConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAnglesWithConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<EulerAnglesWithConfidence> is deprecated: use realsense_ros_person-msg:EulerAnglesWithConfidence instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <EulerAnglesWithConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:angles-val is deprecated.  Use realsense_ros_person-msg:angles instead.")
  (angles m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <EulerAnglesWithConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:confidence-val is deprecated.  Use realsense_ros_person-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAnglesWithConfidence>) ostream)
  "Serializes a message object of type '<EulerAnglesWithConfidence>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angles) ostream)
  (cl:let* ((signed (cl:slot-value msg 'confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAnglesWithConfidence>) istream)
  "Deserializes a message object of type '<EulerAnglesWithConfidence>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angles) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerAnglesWithConfidence>)))
  "Returns string type for a message object of type '<EulerAnglesWithConfidence>"
  "realsense_ros_person/EulerAnglesWithConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerAnglesWithConfidence)))
  "Returns string type for a message object of type 'EulerAnglesWithConfidence"
  "realsense_ros_person/EulerAnglesWithConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerAnglesWithConfidence>)))
  "Returns md5sum for a message object of type '<EulerAnglesWithConfidence>"
  "5e76354a4d10460adcef4d7d5dd74f1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAnglesWithConfidence)))
  "Returns md5sum for a message object of type 'EulerAnglesWithConfidence"
  "5e76354a4d10460adcef4d7d5dd74f1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAnglesWithConfidence>)))
  "Returns full string definition for message of type '<EulerAnglesWithConfidence>"
  (cl:format cl:nil "EulerAngles angles~%int32 confidence~%~%================================================================================~%MSG: realsense_ros_person/EulerAngles~%float32 pitch~%float32 roll~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAnglesWithConfidence)))
  "Returns full string definition for message of type 'EulerAnglesWithConfidence"
  (cl:format cl:nil "EulerAngles angles~%int32 confidence~%~%================================================================================~%MSG: realsense_ros_person/EulerAngles~%float32 pitch~%float32 roll~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAnglesWithConfidence>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angles))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAnglesWithConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAnglesWithConfidence
    (cl:cons ':angles (angles msg))
    (cl:cons ':confidence (confidence msg))
))
