; Auto-generated. Do not edit!


(cl:in-package realsense_ros_object-msg)


;//! \htmlinclude Location3D.msg.html

(cl:defclass <Location3D> (roslisp-msg-protocol:ros-message)
  ((coordinates
    :reader coordinates
    :initarg :coordinates
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (horiz_margin
    :reader horiz_margin
    :initarg :horiz_margin
    :type cl:float
    :initform 0.0)
   (vert_margin
    :reader vert_margin
    :initarg :vert_margin
    :type cl:float
    :initform 0.0))
)

(cl:defclass Location3D (<Location3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Location3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Location3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_object-msg:<Location3D> is deprecated: use realsense_ros_object-msg:Location3D instead.")))

(cl:ensure-generic-function 'coordinates-val :lambda-list '(m))
(cl:defmethod coordinates-val ((m <Location3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:coordinates-val is deprecated.  Use realsense_ros_object-msg:coordinates instead.")
  (coordinates m))

(cl:ensure-generic-function 'horiz_margin-val :lambda-list '(m))
(cl:defmethod horiz_margin-val ((m <Location3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:horiz_margin-val is deprecated.  Use realsense_ros_object-msg:horiz_margin instead.")
  (horiz_margin m))

(cl:ensure-generic-function 'vert_margin-val :lambda-list '(m))
(cl:defmethod vert_margin-val ((m <Location3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:vert_margin-val is deprecated.  Use realsense_ros_object-msg:vert_margin instead.")
  (vert_margin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Location3D>) ostream)
  "Serializes a message object of type '<Location3D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coordinates) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'horiz_margin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vert_margin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Location3D>) istream)
  "Deserializes a message object of type '<Location3D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coordinates) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horiz_margin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vert_margin) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Location3D>)))
  "Returns string type for a message object of type '<Location3D>"
  "realsense_ros_object/Location3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Location3D)))
  "Returns string type for a message object of type 'Location3D"
  "realsense_ros_object/Location3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Location3D>)))
  "Returns md5sum for a message object of type '<Location3D>"
  "9d0d637baabd2a2edf3e785062238586")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Location3D)))
  "Returns md5sum for a message object of type 'Location3D"
  "9d0d637baabd2a2edf3e785062238586")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Location3D>)))
  "Returns full string definition for message of type '<Location3D>"
  (cl:format cl:nil "geometry_msgs/Point32 coordinates~%float32 horiz_margin~%float32 vert_margin~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Location3D)))
  "Returns full string definition for message of type 'Location3D"
  (cl:format cl:nil "geometry_msgs/Point32 coordinates~%float32 horiz_margin~%float32 vert_margin~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Location3D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coordinates))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Location3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Location3D
    (cl:cons ':coordinates (coordinates msg))
    (cl:cons ':horiz_margin (horiz_margin msg))
    (cl:cons ':vert_margin (vert_margin msg))
))
