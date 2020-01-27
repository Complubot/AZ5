; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-srv)


;//! \htmlinclude TrackingConfig-request.msg.html

(cl:defclass <TrackingConfig-request> (roslisp-msg-protocol:ros-message)
  ((enableRecognition
    :reader enableRecognition
    :initarg :enableRecognition
    :type cl:boolean
    :initform cl:nil)
   (enableSkeleton
    :reader enableSkeleton
    :initarg :enableSkeleton
    :type cl:boolean
    :initform cl:nil)
   (enablePointingGesture
    :reader enablePointingGesture
    :initarg :enablePointingGesture
    :type cl:boolean
    :initform cl:nil)
   (enableWaveGesture
    :reader enableWaveGesture
    :initarg :enableWaveGesture
    :type cl:boolean
    :initform cl:nil)
   (enableLandmarks
    :reader enableLandmarks
    :initarg :enableLandmarks
    :type cl:boolean
    :initform cl:nil)
   (enableHeadBoundingBox
    :reader enableHeadBoundingBox
    :initarg :enableHeadBoundingBox
    :type cl:boolean
    :initform cl:nil)
   (enableHeadPose
    :reader enableHeadPose
    :initarg :enableHeadPose
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrackingConfig-request (<TrackingConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<TrackingConfig-request> is deprecated: use realsense_ros_person-srv:TrackingConfig-request instead.")))

(cl:ensure-generic-function 'enableRecognition-val :lambda-list '(m))
(cl:defmethod enableRecognition-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enableRecognition-val is deprecated.  Use realsense_ros_person-srv:enableRecognition instead.")
  (enableRecognition m))

(cl:ensure-generic-function 'enableSkeleton-val :lambda-list '(m))
(cl:defmethod enableSkeleton-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enableSkeleton-val is deprecated.  Use realsense_ros_person-srv:enableSkeleton instead.")
  (enableSkeleton m))

(cl:ensure-generic-function 'enablePointingGesture-val :lambda-list '(m))
(cl:defmethod enablePointingGesture-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enablePointingGesture-val is deprecated.  Use realsense_ros_person-srv:enablePointingGesture instead.")
  (enablePointingGesture m))

(cl:ensure-generic-function 'enableWaveGesture-val :lambda-list '(m))
(cl:defmethod enableWaveGesture-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enableWaveGesture-val is deprecated.  Use realsense_ros_person-srv:enableWaveGesture instead.")
  (enableWaveGesture m))

(cl:ensure-generic-function 'enableLandmarks-val :lambda-list '(m))
(cl:defmethod enableLandmarks-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enableLandmarks-val is deprecated.  Use realsense_ros_person-srv:enableLandmarks instead.")
  (enableLandmarks m))

(cl:ensure-generic-function 'enableHeadBoundingBox-val :lambda-list '(m))
(cl:defmethod enableHeadBoundingBox-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enableHeadBoundingBox-val is deprecated.  Use realsense_ros_person-srv:enableHeadBoundingBox instead.")
  (enableHeadBoundingBox m))

(cl:ensure-generic-function 'enableHeadPose-val :lambda-list '(m))
(cl:defmethod enableHeadPose-val ((m <TrackingConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:enableHeadPose-val is deprecated.  Use realsense_ros_person-srv:enableHeadPose instead.")
  (enableHeadPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingConfig-request>) ostream)
  "Serializes a message object of type '<TrackingConfig-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableRecognition) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableSkeleton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enablePointingGesture) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableWaveGesture) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableLandmarks) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableHeadBoundingBox) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableHeadPose) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingConfig-request>) istream)
  "Deserializes a message object of type '<TrackingConfig-request>"
    (cl:setf (cl:slot-value msg 'enableRecognition) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enableSkeleton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enablePointingGesture) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enableWaveGesture) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enableLandmarks) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enableHeadBoundingBox) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enableHeadPose) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingConfig-request>)))
  "Returns string type for a service object of type '<TrackingConfig-request>"
  "realsense_ros_person/TrackingConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingConfig-request)))
  "Returns string type for a service object of type 'TrackingConfig-request"
  "realsense_ros_person/TrackingConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingConfig-request>)))
  "Returns md5sum for a message object of type '<TrackingConfig-request>"
  "78e03ba522060c37577ef42678654b8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingConfig-request)))
  "Returns md5sum for a message object of type 'TrackingConfig-request"
  "78e03ba522060c37577ef42678654b8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingConfig-request>)))
  "Returns full string definition for message of type '<TrackingConfig-request>"
  (cl:format cl:nil "bool enableRecognition~%bool enableSkeleton~%bool enablePointingGesture~%bool enableWaveGesture~%bool enableLandmarks~%bool enableHeadBoundingBox~%bool enableHeadPose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingConfig-request)))
  "Returns full string definition for message of type 'TrackingConfig-request"
  (cl:format cl:nil "bool enableRecognition~%bool enableSkeleton~%bool enablePointingGesture~%bool enableWaveGesture~%bool enableLandmarks~%bool enableHeadBoundingBox~%bool enableHeadPose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingConfig-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingConfig-request
    (cl:cons ':enableRecognition (enableRecognition msg))
    (cl:cons ':enableSkeleton (enableSkeleton msg))
    (cl:cons ':enablePointingGesture (enablePointingGesture msg))
    (cl:cons ':enableWaveGesture (enableWaveGesture msg))
    (cl:cons ':enableLandmarks (enableLandmarks msg))
    (cl:cons ':enableHeadBoundingBox (enableHeadBoundingBox msg))
    (cl:cons ':enableHeadPose (enableHeadPose msg))
))
;//! \htmlinclude TrackingConfig-response.msg.html

(cl:defclass <TrackingConfig-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrackingConfig-response (<TrackingConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-srv:<TrackingConfig-response> is deprecated: use realsense_ros_person-srv:TrackingConfig-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrackingConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-srv:status-val is deprecated.  Use realsense_ros_person-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingConfig-response>) ostream)
  "Serializes a message object of type '<TrackingConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingConfig-response>) istream)
  "Deserializes a message object of type '<TrackingConfig-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingConfig-response>)))
  "Returns string type for a service object of type '<TrackingConfig-response>"
  "realsense_ros_person/TrackingConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingConfig-response)))
  "Returns string type for a service object of type 'TrackingConfig-response"
  "realsense_ros_person/TrackingConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingConfig-response>)))
  "Returns md5sum for a message object of type '<TrackingConfig-response>"
  "78e03ba522060c37577ef42678654b8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingConfig-response)))
  "Returns md5sum for a message object of type 'TrackingConfig-response"
  "78e03ba522060c37577ef42678654b8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingConfig-response>)))
  "Returns full string definition for message of type '<TrackingConfig-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingConfig-response)))
  "Returns full string definition for message of type 'TrackingConfig-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingConfig-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingConfig-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrackingConfig)))
  'TrackingConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrackingConfig)))
  'TrackingConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingConfig)))
  "Returns string type for a service object of type '<TrackingConfig>"
  "realsense_ros_person/TrackingConfig")