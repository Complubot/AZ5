; Auto-generated. Do not edit!


(cl:in-package realsense_ros_slam-msg)


;//! \htmlinclude TrackingAccuracy.msg.html

(cl:defclass <TrackingAccuracy> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracking_accuracy
    :reader tracking_accuracy
    :initarg :tracking_accuracy
    :type cl:integer
    :initform 0))
)

(cl:defclass TrackingAccuracy (<TrackingAccuracy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingAccuracy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingAccuracy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_slam-msg:<TrackingAccuracy> is deprecated: use realsense_ros_slam-msg:TrackingAccuracy instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackingAccuracy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_slam-msg:header-val is deprecated.  Use realsense_ros_slam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracking_accuracy-val :lambda-list '(m))
(cl:defmethod tracking_accuracy-val ((m <TrackingAccuracy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_slam-msg:tracking_accuracy-val is deprecated.  Use realsense_ros_slam-msg:tracking_accuracy instead.")
  (tracking_accuracy m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackingAccuracy>)))
    "Constants for message type '<TrackingAccuracy>"
  '((:TRACKING_ACCURACY_FAILED . 0)
    (:TRACKING_ACCURACY_LOW . 1)
    (:TRACKING_ACCURACY_MEDIUM . 2)
    (:TRACKING_ACCURACY_HIGH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackingAccuracy)))
    "Constants for message type 'TrackingAccuracy"
  '((:TRACKING_ACCURACY_FAILED . 0)
    (:TRACKING_ACCURACY_LOW . 1)
    (:TRACKING_ACCURACY_MEDIUM . 2)
    (:TRACKING_ACCURACY_HIGH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingAccuracy>) ostream)
  "Serializes a message object of type '<TrackingAccuracy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_accuracy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_accuracy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_accuracy)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_accuracy)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingAccuracy>) istream)
  "Deserializes a message object of type '<TrackingAccuracy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_accuracy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tracking_accuracy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tracking_accuracy)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tracking_accuracy)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingAccuracy>)))
  "Returns string type for a message object of type '<TrackingAccuracy>"
  "realsense_ros_slam/TrackingAccuracy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingAccuracy)))
  "Returns string type for a message object of type 'TrackingAccuracy"
  "realsense_ros_slam/TrackingAccuracy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingAccuracy>)))
  "Returns md5sum for a message object of type '<TrackingAccuracy>"
  "f02ead1dd88aaa736f807c98890ab00c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingAccuracy)))
  "Returns md5sum for a message object of type 'TrackingAccuracy"
  "f02ead1dd88aaa736f807c98890ab00c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingAccuracy>)))
  "Returns full string definition for message of type '<TrackingAccuracy>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 tracking_accuracy~%~%#tracking_accuracy types constants~%int32 TRACKING_ACCURACY_FAILED=0~%int32 TRACKING_ACCURACY_LOW=1~%int32 TRACKING_ACCURACY_MEDIUM=2~%int32 TRACKING_ACCURACY_HIGH=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingAccuracy)))
  "Returns full string definition for message of type 'TrackingAccuracy"
  (cl:format cl:nil "std_msgs/Header header~%uint32 tracking_accuracy~%~%#tracking_accuracy types constants~%int32 TRACKING_ACCURACY_FAILED=0~%int32 TRACKING_ACCURACY_LOW=1~%int32 TRACKING_ACCURACY_MEDIUM=2~%int32 TRACKING_ACCURACY_HIGH=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingAccuracy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingAccuracy>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingAccuracy
    (cl:cons ':header (header msg))
    (cl:cons ':tracking_accuracy (tracking_accuracy msg))
))
