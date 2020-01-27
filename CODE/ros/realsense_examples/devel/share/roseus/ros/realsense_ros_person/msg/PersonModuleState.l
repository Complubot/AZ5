;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::PersonModuleState)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'PersonModuleState (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::PERSONMODULESTATE")
  (make-package "REALSENSE_ROS_PERSON::PERSONMODULESTATE"))

(in-package "ROS")
;;//! \htmlinclude PersonModuleState.msg.html


(intern "*TRACKING_STATE_TRACKING*" (find-package "REALSENSE_ROS_PERSON::PERSONMODULESTATE"))
(shadow '*TRACKING_STATE_TRACKING* (find-package "REALSENSE_ROS_PERSON::PERSONMODULESTATE"))
(defconstant realsense_ros_person::PersonModuleState::*TRACKING_STATE_TRACKING* 0)
(intern "*TRACKING_STATE_DETECTING*" (find-package "REALSENSE_ROS_PERSON::PERSONMODULESTATE"))
(shadow '*TRACKING_STATE_DETECTING* (find-package "REALSENSE_ROS_PERSON::PERSONMODULESTATE"))
(defconstant realsense_ros_person::PersonModuleState::*TRACKING_STATE_DETECTING* 1)
(defclass realsense_ros_person::PersonModuleState
  :super ros::object
  :slots (_isRecognitionEnabled _isSkeletonEnabled _isGesturesEnabled _isLandmarksEnabled _isHeadBoundingBoxEnabled _isHeadPoseEnabled _isTrackingEnabled _trackingState ))

(defmethod realsense_ros_person::PersonModuleState
  (:init
   (&key
    ((:isRecognitionEnabled __isRecognitionEnabled) nil)
    ((:isSkeletonEnabled __isSkeletonEnabled) nil)
    ((:isGesturesEnabled __isGesturesEnabled) nil)
    ((:isLandmarksEnabled __isLandmarksEnabled) nil)
    ((:isHeadBoundingBoxEnabled __isHeadBoundingBoxEnabled) nil)
    ((:isHeadPoseEnabled __isHeadPoseEnabled) nil)
    ((:isTrackingEnabled __isTrackingEnabled) nil)
    ((:trackingState __trackingState) 0)
    )
   (send-super :init)
   (setq _isRecognitionEnabled __isRecognitionEnabled)
   (setq _isSkeletonEnabled __isSkeletonEnabled)
   (setq _isGesturesEnabled __isGesturesEnabled)
   (setq _isLandmarksEnabled __isLandmarksEnabled)
   (setq _isHeadBoundingBoxEnabled __isHeadBoundingBoxEnabled)
   (setq _isHeadPoseEnabled __isHeadPoseEnabled)
   (setq _isTrackingEnabled __isTrackingEnabled)
   (setq _trackingState (round __trackingState))
   self)
  (:isRecognitionEnabled
   (&optional __isRecognitionEnabled)
   (if __isRecognitionEnabled (setq _isRecognitionEnabled __isRecognitionEnabled)) _isRecognitionEnabled)
  (:isSkeletonEnabled
   (&optional __isSkeletonEnabled)
   (if __isSkeletonEnabled (setq _isSkeletonEnabled __isSkeletonEnabled)) _isSkeletonEnabled)
  (:isGesturesEnabled
   (&optional __isGesturesEnabled)
   (if __isGesturesEnabled (setq _isGesturesEnabled __isGesturesEnabled)) _isGesturesEnabled)
  (:isLandmarksEnabled
   (&optional __isLandmarksEnabled)
   (if __isLandmarksEnabled (setq _isLandmarksEnabled __isLandmarksEnabled)) _isLandmarksEnabled)
  (:isHeadBoundingBoxEnabled
   (&optional __isHeadBoundingBoxEnabled)
   (if __isHeadBoundingBoxEnabled (setq _isHeadBoundingBoxEnabled __isHeadBoundingBoxEnabled)) _isHeadBoundingBoxEnabled)
  (:isHeadPoseEnabled
   (&optional __isHeadPoseEnabled)
   (if __isHeadPoseEnabled (setq _isHeadPoseEnabled __isHeadPoseEnabled)) _isHeadPoseEnabled)
  (:isTrackingEnabled
   (&optional __isTrackingEnabled)
   (if __isTrackingEnabled (setq _isTrackingEnabled __isTrackingEnabled)) _isTrackingEnabled)
  (:trackingState
   (&optional __trackingState)
   (if __trackingState (setq _trackingState __trackingState)) _trackingState)
  (:serialization-length
   ()
   (+
    ;; bool _isRecognitionEnabled
    1
    ;; bool _isSkeletonEnabled
    1
    ;; bool _isGesturesEnabled
    1
    ;; bool _isLandmarksEnabled
    1
    ;; bool _isHeadBoundingBoxEnabled
    1
    ;; bool _isHeadPoseEnabled
    1
    ;; bool _isTrackingEnabled
    1
    ;; int32 _trackingState
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isRecognitionEnabled
       (if _isRecognitionEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _isSkeletonEnabled
       (if _isSkeletonEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _isGesturesEnabled
       (if _isGesturesEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _isLandmarksEnabled
       (if _isLandmarksEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _isHeadBoundingBoxEnabled
       (if _isHeadBoundingBoxEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _isHeadPoseEnabled
       (if _isHeadPoseEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _isTrackingEnabled
       (if _isTrackingEnabled (write-byte -1 s) (write-byte 0 s))
     ;; int32 _trackingState
       (write-long _trackingState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isRecognitionEnabled
     (setq _isRecognitionEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isSkeletonEnabled
     (setq _isSkeletonEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isGesturesEnabled
     (setq _isGesturesEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isLandmarksEnabled
     (setq _isLandmarksEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isHeadBoundingBoxEnabled
     (setq _isHeadBoundingBoxEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isHeadPoseEnabled
     (setq _isHeadPoseEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isTrackingEnabled
     (setq _isTrackingEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _trackingState
     (setq _trackingState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_person::PersonModuleState :md5sum-) "a004989fab301fe2ac94f9cab839eaed")
(setf (get realsense_ros_person::PersonModuleState :datatype-) "realsense_ros_person/PersonModuleState")
(setf (get realsense_ros_person::PersonModuleState :definition-)
      "#features enables/disabled states
bool isRecognitionEnabled
bool isSkeletonEnabled
bool isGesturesEnabled
bool isLandmarksEnabled
bool isHeadBoundingBoxEnabled
bool isHeadPoseEnabled
bool isTrackingEnabled

#additional states
int32 trackingState

int32 TRACKING_STATE_TRACKING=0
int32 TRACKING_STATE_DETECTING=1

")



(provide :realsense_ros_person/PersonModuleState "a004989fab301fe2ac94f9cab839eaed")


