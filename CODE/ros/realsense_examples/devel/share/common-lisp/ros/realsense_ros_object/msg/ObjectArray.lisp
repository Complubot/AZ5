; Auto-generated. Do not edit!


(cl:in-package realsense_ros_object-msg)


;//! \htmlinclude ObjectArray.msg.html

(cl:defclass <ObjectArray> (roslisp-msg-protocol:ros-message)
  ((objects_vector
    :reader objects_vector
    :initarg :objects_vector
    :type (cl:vector realsense_ros_object-msg:Object)
   :initform (cl:make-array 0 :element-type 'realsense_ros_object-msg:Object :initial-element (cl:make-instance 'realsense_ros_object-msg:Object))))
)

(cl:defclass ObjectArray (<ObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_object-msg:<ObjectArray> is deprecated: use realsense_ros_object-msg:ObjectArray instead.")))

(cl:ensure-generic-function 'objects_vector-val :lambda-list '(m))
(cl:defmethod objects_vector-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:objects_vector-val is deprecated.  Use realsense_ros_object-msg:objects_vector instead.")
  (objects_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectArray>) ostream)
  "Serializes a message object of type '<ObjectArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectArray>) istream)
  "Deserializes a message object of type '<ObjectArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'realsense_ros_object-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectArray>)))
  "Returns string type for a message object of type '<ObjectArray>"
  "realsense_ros_object/ObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectArray)))
  "Returns string type for a message object of type 'ObjectArray"
  "realsense_ros_object/ObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectArray>)))
  "Returns md5sum for a message object of type '<ObjectArray>"
  "d0eaf0f4593b2bff3780b9347ff0665f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectArray)))
  "Returns md5sum for a message object of type 'ObjectArray"
  "d0eaf0f4593b2bff3780b9347ff0665f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectArray>)))
  "Returns full string definition for message of type '<ObjectArray>"
  (cl:format cl:nil "Object[] objects_vector~%~%================================================================================~%MSG: realsense_ros_object/Object~%int32 label~%string object_name~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectArray)))
  "Returns full string definition for message of type 'ObjectArray"
  (cl:format cl:nil "Object[] objects_vector~%~%================================================================================~%MSG: realsense_ros_object/Object~%int32 label~%string object_name~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectArray
    (cl:cons ':objects_vector (objects_vector msg))
))
