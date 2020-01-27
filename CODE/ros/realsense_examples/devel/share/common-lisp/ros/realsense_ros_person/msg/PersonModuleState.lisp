; Auto-generated. Do not edit!


(cl:in-package realsense_ros_person-msg)


;//! \htmlinclude PersonModuleState.msg.html

(cl:defclass <PersonModuleState> (roslisp-msg-protocol:ros-message)
  ((isRecognitionEnabled
    :reader isRecognitionEnabled
    :initarg :isRecognitionEnabled
    :type cl:boolean
    :initform cl:nil)
   (isSkeletonEnabled
    :reader isSkeletonEnabled
    :initarg :isSkeletonEnabled
    :type cl:boolean
    :initform cl:nil)
   (isGesturesEnabled
    :reader isGesturesEnabled
    :initarg :isGesturesEnabled
    :type cl:boolean
    :initform cl:nil)
   (isLandmarksEnabled
    :reader isLandmarksEnabled
    :initarg :isLandmarksEnabled
    :type cl:boolean
    :initform cl:nil)
   (isHeadBoundingBoxEnabled
    :reader isHeadBoundingBoxEnabled
    :initarg :isHeadBoundingBoxEnabled
    :type cl:boolean
    :initform cl:nil)
   (isHeadPoseEnabled
    :reader isHeadPoseEnabled
    :initarg :isHeadPoseEnabled
    :type cl:boolean
    :initform cl:nil)
   (isTrackingEnabled
    :reader isTrackingEnabled
    :initarg :isTrackingEnabled
    :type cl:boolean
    :initform cl:nil)
   (trackingState
    :reader trackingState
    :initarg :trackingState
    :type cl:integer
    :initform 0))
)

(cl:defclass PersonModuleState (<PersonModuleState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonModuleState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonModuleState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name realsense_ros_person-msg:<PersonModuleState> is deprecated: use realsense_ros_person-msg:PersonModuleState instead.")))

(cl:ensure-generic-function 'isRecognitionEnabled-val :lambda-list '(m))
(cl:defmethod isRecognitionEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isRecognitionEnabled-val is deprecated.  Use realsense_ros_person-msg:isRecognitionEnabled instead.")
  (isRecognitionEnabled m))

(cl:ensure-generic-function 'isSkeletonEnabled-val :lambda-list '(m))
(cl:defmethod isSkeletonEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isSkeletonEnabled-val is deprecated.  Use realsense_ros_person-msg:isSkeletonEnabled instead.")
  (isSkeletonEnabled m))

(cl:ensure-generic-function 'isGesturesEnabled-val :lambda-list '(m))
(cl:defmethod isGesturesEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isGesturesEnabled-val is deprecated.  Use realsense_ros_person-msg:isGesturesEnabled instead.")
  (isGesturesEnabled m))

(cl:ensure-generic-function 'isLandmarksEnabled-val :lambda-list '(m))
(cl:defmethod isLandmarksEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isLandmarksEnabled-val is deprecated.  Use realsense_ros_person-msg:isLandmarksEnabled instead.")
  (isLandmarksEnabled m))

(cl:ensure-generic-function 'isHeadBoundingBoxEnabled-val :lambda-list '(m))
(cl:defmethod isHeadBoundingBoxEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isHeadBoundingBoxEnabled-val is deprecated.  Use realsense_ros_person-msg:isHeadBoundingBoxEnabled instead.")
  (isHeadBoundingBoxEnabled m))

(cl:ensure-generic-function 'isHeadPoseEnabled-val :lambda-list '(m))
(cl:defmethod isHeadPoseEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isHeadPoseEnabled-val is deprecated.  Use realsense_ros_person-msg:isHeadPoseEnabled instead.")
  (isHeadPoseEnabled m))

(cl:ensure-generic-function 'isTrackingEnabled-val :lambda-list '(m))
(cl:defmethod isTrackingEnabled-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:isTrackingEnabled-val is deprecated.  Use realsense_ros_person-msg:isTrackingEnabled instead.")
  (isTrackingEnabled m))

(cl:ensure-generic-function 'trackingState-val :lambda-list '(m))
(cl:defmethod trackingState-val ((m <PersonModuleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader realsense_ros_person-msg:trackingState-val is deprecated.  Use realsense_ros_person-msg:trackingState instead.")
  (trackingState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PersonModuleState>)))
    "Constants for message type '<PersonModuleState>"
  '((:TRACKING_STATE_TRACKING . 0)
    (:TRACKING_STATE_DETECTING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PersonModuleState)))
    "Constants for message type 'PersonModuleState"
  '((:TRACKING_STATE_TRACKING . 0)
    (:TRACKING_STATE_DETECTING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonModuleState>) ostream)
  "Serializes a message object of type '<PersonModuleState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isRecognitionEnabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSkeletonEnabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isGesturesEnabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLandmarksEnabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isHeadBoundingBoxEnabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isHeadPoseEnabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isTrackingEnabled) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'trackingState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonModuleState>) istream)
  "Deserializes a message object of type '<PersonModuleState>"
    (cl:setf (cl:slot-value msg 'isRecognitionEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isSkeletonEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isGesturesEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isLandmarksEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isHeadBoundingBoxEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isHeadPoseEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isTrackingEnabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trackingState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonModuleState>)))
  "Returns string type for a message object of type '<PersonModuleState>"
  "realsense_ros_person/PersonModuleState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonModuleState)))
  "Returns string type for a message object of type 'PersonModuleState"
  "realsense_ros_person/PersonModuleState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonModuleState>)))
  "Returns md5sum for a message object of type '<PersonModuleState>"
  "a004989fab301fe2ac94f9cab839eaed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonModuleState)))
  "Returns md5sum for a message object of type 'PersonModuleState"
  "a004989fab301fe2ac94f9cab839eaed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonModuleState>)))
  "Returns full string definition for message of type '<PersonModuleState>"
  (cl:format cl:nil "#features enables/disabled states~%bool isRecognitionEnabled~%bool isSkeletonEnabled~%bool isGesturesEnabled~%bool isLandmarksEnabled~%bool isHeadBoundingBoxEnabled~%bool isHeadPoseEnabled~%bool isTrackingEnabled~%~%#additional states~%int32 trackingState~%~%int32 TRACKING_STATE_TRACKING=0~%int32 TRACKING_STATE_DETECTING=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonModuleState)))
  "Returns full string definition for message of type 'PersonModuleState"
  (cl:format cl:nil "#features enables/disabled states~%bool isRecognitionEnabled~%bool isSkeletonEnabled~%bool isGesturesEnabled~%bool isLandmarksEnabled~%bool isHeadBoundingBoxEnabled~%bool isHeadPoseEnabled~%bool isTrackingEnabled~%~%#additional states~%int32 trackingState~%~%int32 TRACKING_STATE_TRACKING=0~%int32 TRACKING_STATE_DETECTING=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonModuleState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonModuleState>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonModuleState
    (cl:cons ':isRecognitionEnabled (isRecognitionEnabled msg))
    (cl:cons ':isSkeletonEnabled (isSkeletonEnabled msg))
    (cl:cons ':isGesturesEnabled (isGesturesEnabled msg))
    (cl:cons ':isLandmarksEnabled (isLandmarksEnabled msg))
    (cl:cons ':isHeadBoundingBoxEnabled (isHeadBoundingBoxEnabled msg))
    (cl:cons ':isHeadPoseEnabled (isHeadPoseEnabled msg))
    (cl:cons ':isTrackingEnabled (isTrackingEnabled msg))
    (cl:cons ':trackingState (trackingState msg))
))
