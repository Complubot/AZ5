; Auto-generated. Do not edit!


(cl:in-package realsense_ros_object-msg)


;//! \htmlinclude ObjectInBox.msg.html

(cl:defclass <ObjectInBox> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type realsense_ros_object-msg:Object
    :initform (cl:make-instance 'realsense_ros_object-msg:Object))
   (object_bbox
    :reader object_bbox
    :initarg :object_bbox
    :type realsense_ros_object-msg:Rect
    :initform (cl:make-instance 'realsense_ros_object-msg:Rect))
   (location
    :reader location
    :initarg :location
    :type realsense_ros_object-msg:Location3D
    :initform (cl:make-instance 'realsense_ros_object-msg:Location3D)))
)

(cl:defclass ObjectInBox (<ObjectInBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectInBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectInBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_object-msg:<ObjectInBox> is deprecated: use realsense_ros_object-msg:ObjectInBox instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <ObjectInBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:object-val is deprecated.  Use realsense_ros_object-msg:object instead.")
  (object m))

(cl:ensure-generic-function 'object_bbox-val :lambda-list '(m))
(cl:defmethod object_bbox-val ((m <ObjectInBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:object_bbox-val is deprecated.  Use realsense_ros_object-msg:object_bbox instead.")
  (object_bbox m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <ObjectInBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:location-val is deprecated.  Use realsense_ros_object-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectInBox>) ostream)
  "Serializes a message object of type '<ObjectInBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_bbox) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectInBox>) istream)
  "Deserializes a message object of type '<ObjectInBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_bbox) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectInBox>)))
  "Returns string type for a message object of type '<ObjectInBox>"
  "realsense_ros_object/ObjectInBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectInBox)))
  "Returns string type for a message object of type 'ObjectInBox"
  "realsense_ros_object/ObjectInBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectInBox>)))
  "Returns md5sum for a message object of type '<ObjectInBox>"
  "506c556ef4808f18c8fda7a0b6d365a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectInBox)))
  "Returns md5sum for a message object of type 'ObjectInBox"
  "506c556ef4808f18c8fda7a0b6d365a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectInBox>)))
  "Returns full string definition for message of type '<ObjectInBox>"
  (cl:format cl:nil "Object object~%Rect object_bbox~%Location3D location~%~%================================================================================~%MSG: realsense_ros_object/Object~%int32 label~%string object_name~%float32 probability~%~%================================================================================~%MSG: realsense_ros_object/Rect~%int32 x~%int32 y~%int32 height~%int32 width~%~%================================================================================~%MSG: realsense_ros_object/Location3D~%geometry_msgs/Point32 coordinates~%float32 horiz_margin~%float32 vert_margin~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectInBox)))
  "Returns full string definition for message of type 'ObjectInBox"
  (cl:format cl:nil "Object object~%Rect object_bbox~%Location3D location~%~%================================================================================~%MSG: realsense_ros_object/Object~%int32 label~%string object_name~%float32 probability~%~%================================================================================~%MSG: realsense_ros_object/Rect~%int32 x~%int32 y~%int32 height~%int32 width~%~%================================================================================~%MSG: realsense_ros_object/Location3D~%geometry_msgs/Point32 coordinates~%float32 horiz_margin~%float32 vert_margin~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectInBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_bbox))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectInBox>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectInBox
    (cl:cons ':object (object msg))
    (cl:cons ':object_bbox (object_bbox msg))
    (cl:cons ':location (location msg))
))
