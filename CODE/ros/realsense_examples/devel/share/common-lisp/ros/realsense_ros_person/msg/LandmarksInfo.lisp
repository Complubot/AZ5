; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude LandmarksInfo.msg.html

(cl:defclass <LandmarksInfo> (roslisp-msg-protocol:ros-message)
  ((confidence
    :reader confidence
    :initarg :confidence
    :type cl:integer
    :initform 0)
   (landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector realsense_ros_person-msg:Landmark)
   :initform (cl:make-array 0 :element-type 'realsense_ros_person-msg:Landmark :initial-element (cl:make-instance 'realsense_ros_person-msg:Landmark))))
)

(cl:defclass LandmarksInfo (<LandmarksInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarksInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarksInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<LandmarksInfo> is deprecated: use realsense_ros_person-msg:LandmarksInfo instead.")))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LandmarksInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:confidence-val is deprecated.  Use realsense_ros_person-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <LandmarksInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:landmarks-val is deprecated.  Use realsense_ros_person-msg:landmarks instead.")
  (landmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarksInfo>) ostream)
  "Serializes a message object of type '<LandmarksInfo>"
  (cl:let* ((signed (cl:slot-value msg 'confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarksInfo>) istream)
  "Deserializes a message object of type '<LandmarksInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confidence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_ros_person-msg:Landmark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarksInfo>)))
  "Returns string type for a message object of type '<LandmarksInfo>"
  "realsense_ros_person/LandmarksInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarksInfo)))
  "Returns string type for a message object of type 'LandmarksInfo"
  "realsense_ros_person/LandmarksInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarksInfo>)))
  "Returns md5sum for a message object of type '<LandmarksInfo>"
  "b88fb5d4a75fae4bfffdb6477b2b15a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarksInfo)))
  "Returns md5sum for a message object of type 'LandmarksInfo"
  "b88fb5d4a75fae4bfffdb6477b2b15a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarksInfo>)))
  "Returns full string definition for message of type '<LandmarksInfo>"
  (cl:format cl:nil "int32 confidence~%Landmark[] landmarks~%~%================================================================================~%MSG: realsense_ros_person/Landmark~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarksInfo)))
  "Returns full string definition for message of type 'LandmarksInfo"
  (cl:format cl:nil "int32 confidence~%Landmark[] landmarks~%~%================================================================================~%MSG: realsense_ros_person/Landmark~%geometry_msgs/Point location~%geometry_msgs/Point32 realWorldCoordinates~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarksInfo>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarksInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarksInfo
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':landmarks (landmarks msg))
))
