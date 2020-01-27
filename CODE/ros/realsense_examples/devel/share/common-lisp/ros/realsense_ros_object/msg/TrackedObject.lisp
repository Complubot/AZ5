; Auto-generated. Do not edit!


(cl:in-package realsense_ros_object-msg)


;//! \htmlinclude TrackedObject.msg.html

(cl:defclass <TrackedObject> (roslisp-msg-protocol:ros-message)
  ((bbox
    :reader bbox
    :initarg :bbox
    :type realsense_ros_object-msg:Rect
    :initform (cl:make-instance 'realsense_ros_object-msg:Rect))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type realsense_ros_object-msg:Location3D
    :initform (cl:make-instance 'realsense_ros_object-msg:Location3D)))
)

(cl:defclass TrackedObject (<TrackedObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackedObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackedObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_object-msg:<TrackedObject> is deprecated: use realsense_ros_object-msg:TrackedObject instead.")))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:bbox-val is deprecated.  Use realsense_ros_object-msg:bbox instead.")
  (bbox m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:id-val is deprecated.  Use realsense_ros_object-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <TrackedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:location-val is deprecated.  Use realsense_ros_object-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackedObject>) ostream)
  "Serializes a message object of type '<TrackedObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackedObject>) istream)
  "Deserializes a message object of type '<TrackedObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackedObject>)))
  "Returns string type for a message object of type '<TrackedObject>"
  "realsense_ros_object/TrackedObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackedObject)))
  "Returns string type for a message object of type 'TrackedObject"
  "realsense_ros_object/TrackedObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackedObject>)))
  "Returns md5sum for a message object of type '<TrackedObject>"
  "49a76037ad24b477fa0d232ca39d6579")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackedObject)))
  "Returns md5sum for a message object of type 'TrackedObject"
  "49a76037ad24b477fa0d232ca39d6579")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackedObject>)))
  "Returns full string definition for message of type '<TrackedObject>"
  (cl:format cl:nil "Rect bbox~%int32 id ~%Location3D location~%~%================================================================================~%MSG: realsense_ros_object/Rect~%int32 x~%int32 y~%int32 height~%int32 width~%~%================================================================================~%MSG: realsense_ros_object/Location3D~%geometry_msgs/Point32 coordinates~%float32 horiz_margin~%float32 vert_margin~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackedObject)))
  "Returns full string definition for message of type 'TrackedObject"
  (cl:format cl:nil "Rect bbox~%int32 id ~%Location3D location~%~%================================================================================~%MSG: realsense_ros_object/Rect~%int32 x~%int32 y~%int32 height~%int32 width~%~%================================================================================~%MSG: realsense_ros_object/Location3D~%geometry_msgs/Point32 coordinates~%float32 horiz_margin~%float32 vert_margin~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackedObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackedObject>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackedObject
    (cl:cons ':bbox (bbox msg))
    (cl:cons ':id (id msg))
    (cl:cons ':location (location msg))
))
