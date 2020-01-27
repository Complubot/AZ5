; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude RectWithConfidence.msg.html

(cl:defclass <RectWithConfidence> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:integer
    :initform 0)
   (rectCorners
    :reader rectCorners
    :initarg :rectCorners
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 2 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass RectWithConfidence (<RectWithConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RectWithConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RectWithConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<RectWithConfidence> is deprecated: use realsense_ros_person-msg:RectWithConfidence instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RectWithConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:confidence-val is deprecated.  Use realsense_ros_person-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'rectCorners-val :lambda-list '(m))
(cl:defmethod rectCorners-val ((m <RectWithConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:rectCorners-val is deprecated.  Use realsense_ros_person-msg:rectCorners instead.")
  (rectCorners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RectWithConfidence>) ostream)
  "Serializes a message object of type '<RectWithConfidence>"
  (cl:let* ((signed (cl:slot-value msg 'confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rectCorners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RectWithConfidence>) istream)
  "Deserializes a message object of type '<RectWithConfidence>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'rectCorners) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'rectCorners)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RectWithConfidence>)))
  "Returns string type for a message object of type '<RectWithConfidence>"
  "realsense_ros_person/RectWithConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectWithConfidence)))
  "Returns string type for a message object of type 'RectWithConfidence"
  "realsense_ros_person/RectWithConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RectWithConfidence>)))
  "Returns md5sum for a message object of type '<RectWithConfidence>"
  "a4605f6e3ec78453799435502960c372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RectWithConfidence)))
  "Returns md5sum for a message object of type 'RectWithConfidence"
  "a4605f6e3ec78453799435502960c372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RectWithConfidence>)))
  "Returns full string definition for message of type '<RectWithConfidence>"
  (cl:format cl:nil "int32 confidence~%geometry_msgs/Point32[2] rectCorners~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RectWithConfidence)))
  "Returns full string definition for message of type 'RectWithConfidence"
  (cl:format cl:nil "int32 confidence~%geometry_msgs/Point32[2] rectCorners~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RectWithConfidence>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rectCorners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RectWithConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'RectWithConfidence
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':rectCorners (rectCorners msg))
))
