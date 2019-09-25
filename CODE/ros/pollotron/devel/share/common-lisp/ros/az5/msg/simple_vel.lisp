; Auto-generated. Do not edit!


(cl:in-package az5-msg)


;//! \htmlinclude simple_vel.msg.html

(cl:defclass <simple_vel> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:integer
    :initform 0))
)

(cl:defclass simple_vel (<simple_vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name az5-msg:<simple_vel> is deprecated: use az5-msg:simple_vel instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <simple_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:x-val is deprecated.  Use az5-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <simple_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:y-val is deprecated.  Use az5-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <simple_vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader az5-msg:theta-val is deprecated.  Use az5-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_vel>) ostream)
  "Serializes a message object of type '<simple_vel>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_vel>) istream)
  "Deserializes a message object of type '<simple_vel>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'theta) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_vel>)))
  "Returns string type for a message object of type '<simple_vel>"
  "az5/simple_vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_vel)))
  "Returns string type for a message object of type 'simple_vel"
  "az5/simple_vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_vel>)))
  "Returns md5sum for a message object of type '<simple_vel>"
  "2bff1127cd10ca02349c9c72c72be56e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_vel)))
  "Returns md5sum for a message object of type 'simple_vel"
  "2bff1127cd10ca02349c9c72c72be56e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_vel>)))
  "Returns full string definition for message of type '<simple_vel>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_vel)))
  "Returns full string definition for message of type 'simple_vel"
  (cl:format cl:nil "int32 x~%int32 y~%int32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_vel>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_vel>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_vel
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
