; Auto-generated. Do not edit!


(cl:in-package realsense_ros_object-msg)


;//! \htmlinclude cpu_gpu.msg.html

(cl:defclass <cpu_gpu> (roslisp-msg-protocol:ros-message)
  ((CPU_GPU
    :reader CPU_GPU
    :initarg :CPU_GPU
    :type cl:string
    :initform ""))
)

(cl:defclass cpu_gpu (<cpu_gpu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cpu_gpu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cpu_gpu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_object-msg:<cpu_gpu> is deprecated: use realsense_ros_object-msg:cpu_gpu instead.")))

(cl:ensure-generic-function 'CPU_GPU-val :lambda-list '(m))
(cl:defmethod CPU_GPU-val ((m <cpu_gpu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_object-msg:CPU_GPU-val is deprecated.  Use realsense_ros_object-msg:CPU_GPU instead.")
  (CPU_GPU m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cpu_gpu>) ostream)
  "Serializes a message object of type '<cpu_gpu>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'CPU_GPU))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'CPU_GPU))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cpu_gpu>) istream)
  "Deserializes a message object of type '<cpu_gpu>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CPU_GPU) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'CPU_GPU) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cpu_gpu>)))
  "Returns string type for a message object of type '<cpu_gpu>"
  "realsense_ros_object/cpu_gpu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cpu_gpu)))
  "Returns string type for a message object of type 'cpu_gpu"
  "realsense_ros_object/cpu_gpu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cpu_gpu>)))
  "Returns md5sum for a message object of type '<cpu_gpu>"
  "61995a7e6325b9685a2e0414cf8b8822")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cpu_gpu)))
  "Returns md5sum for a message object of type 'cpu_gpu"
  "61995a7e6325b9685a2e0414cf8b8822")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cpu_gpu>)))
  "Returns full string definition for message of type '<cpu_gpu>"
  (cl:format cl:nil "string CPU_GPU~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cpu_gpu)))
  "Returns full string definition for message of type 'cpu_gpu"
  (cl:format cl:nil "string CPU_GPU~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cpu_gpu>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'CPU_GPU))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cpu_gpu>))
  "Converts a ROS message object to a list"
  (cl:list 'cpu_gpu
    (cl:cons ':CPU_GPU (CPU_GPU msg))
))
