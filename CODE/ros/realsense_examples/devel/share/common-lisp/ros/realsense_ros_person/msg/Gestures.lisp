; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude Gestures.msg.html

(cl:defclass <Gestures> (roslisp-msg-protocol:ros-message)
  ((pointing
    :reader pointing
    :initarg :pointing
    :type realsense_ros_person-msg:Pointing
    :initform (cl:make-instance 'realsense_ros_person-msg:Pointing))
   (wave
    :reader wave
    :initarg :wave
    :type realsense_ros_person-msg:Wave
    :initform (cl:make-instance 'realsense_ros_person-msg:Wave)))
)

(cl:defclass Gestures (<Gestures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gestures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gestures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<Gestures> is deprecated: use realsense_ros_person-msg:Gestures instead.")))

(cl:ensure-generic-function 'pointing-val :lambda-list '(m))
(cl:defmethod pointing-val ((m <Gestures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:pointing-val is deprecated.  Use realsense_ros_person-msg:pointing instead.")
  (pointing m))

(cl:ensure-generic-function 'wave-val :lambda-list '(m))
(cl:defmethod wave-val ((m <Gestures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:wave-val is deprecated.  Use realsense_ros_person-msg:wave instead.")
  (wave m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gestures>) ostream)
  "Serializes a message object of type '<Gestures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointing) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wave) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gestures>) istream)
  "Deserializes a message object of type '<Gestures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointing) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wave) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gestures>)))
  "Returns string type for a message object of type '<Gestures>"
  "realsense_ros_person/Gestures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gestures)))
  "Returns string type for a message object of type 'Gestures"
  "realsense_ros_person/Gestures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gestures>)))
  "Returns md5sum for a message object of type '<Gestures>"
  "d3676ee03e8d847bc8d129f9b683163e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gestures)))
  "Returns md5sum for a message object of type 'Gestures"
  "d3676ee03e8d847bc8d129f9b683163e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gestures>)))
  "Returns full string definition for message of type '<Gestures>"
  (cl:format cl:nil "Pointing pointing~%Wave wave~%~%================================================================================~%MSG: realsense_ros_person/Pointing~%int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: realsense_ros_person/Wave~%int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gestures)))
  "Returns full string definition for message of type 'Gestures"
  (cl:format cl:nil "Pointing pointing~%Wave wave~%~%================================================================================~%MSG: realsense_ros_person/Pointing~%int32 confidence~%geometry_msgs/Point32 originColor~%geometry_msgs/Point32 originWorld~%geometry_msgs/Point32 orientationColor~%geometry_msgs/Vector3 orientationWorld~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: realsense_ros_person/Wave~%int32 type~%~%#Wave gesture types~%int32 WAVE_NOT_DETECTED=-1 # Wave not detected ~%int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area~%int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area~%int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area~%int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gestures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointing))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wave))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gestures>))
  "Converts a ROS message object to a list"
  (cl:list 'Gestures
    (cl:cons ':pointing (pointing msg))
    (cl:cons ':wave (wave msg))
))
