;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::TrackingConfig)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'TrackingConfig (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::TRACKINGCONFIG")
  (make-package "REALSENSE_ROS_PERSON::TRACKINGCONFIG"))
(unless (find-package "REALSENSE_ROS_PERSON::TRACKINGCONFIGREQUEST")
  (make-package "REALSENSE_ROS_PERSON::TRACKINGCONFIGREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::TRACKINGCONFIGRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::TRACKINGCONFIGRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::TrackingConfigRequest
  :super ros::object
  :slots (_enableRecognition _enableSkeleton _enablePointingGesture _enableWaveGesture _enableLandmarks _enableHeadBoundingBox _enableHeadPose ))

(defmethod realsense_ros_person::TrackingConfigRequest
  (:init
   (&key
    ((:enableRecognition __enableRecognition) nil)
    ((:enableSkeleton __enableSkeleton) nil)
    ((:enablePointingGesture __enablePointingGesture) nil)
    ((:enableWaveGesture __enableWaveGesture) nil)
    ((:enableLandmarks __enableLandmarks) nil)
    ((:enableHeadBoundingBox __enableHeadBoundingBox) nil)
    ((:enableHeadPose __enableHeadPose) nil)
    )
   (send-super :init)
   (setq _enableRecognition __enableRecognition)
   (setq _enableSkeleton __enableSkeleton)
   (setq _enablePointingGesture __enablePointingGesture)
   (setq _enableWaveGesture __enableWaveGesture)
   (setq _enableLandmarks __enableLandmarks)
   (setq _enableHeadBoundingBox __enableHeadBoundingBox)
   (setq _enableHeadPose __enableHeadPose)
   self)
  (:enableRecognition
   (&optional __enableRecognition)
   (if __enableRecognition (setq _enableRecognition __enableRecognition)) _enableRecognition)
  (:enableSkeleton
   (&optional __enableSkeleton)
   (if __enableSkeleton (setq _enableSkeleton __enableSkeleton)) _enableSkeleton)
  (:enablePointingGesture
   (&optional __enablePointingGesture)
   (if __enablePointingGesture (setq _enablePointingGesture __enablePointingGesture)) _enablePointingGesture)
  (:enableWaveGesture
   (&optional __enableWaveGesture)
   (if __enableWaveGesture (setq _enableWaveGesture __enableWaveGesture)) _enableWaveGesture)
  (:enableLandmarks
   (&optional __enableLandmarks)
   (if __enableLandmarks (setq _enableLandmarks __enableLandmarks)) _enableLandmarks)
  (:enableHeadBoundingBox
   (&optional __enableHeadBoundingBox)
   (if __enableHeadBoundingBox (setq _enableHeadBoundingBox __enableHeadBoundingBox)) _enableHeadBoundingBox)
  (:enableHeadPose
   (&optional __enableHeadPose)
   (if __enableHeadPose (setq _enableHeadPose __enableHeadPose)) _enableHeadPose)
  (:serialization-length
   ()
   (+
    ;; bool _enableRecognition
    1
    ;; bool _enableSkeleton
    1
    ;; bool _enablePointingGesture
    1
    ;; bool _enableWaveGesture
    1
    ;; bool _enableLandmarks
    1
    ;; bool _enableHeadBoundingBox
    1
    ;; bool _enableHeadPose
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableRecognition
       (if _enableRecognition (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableSkeleton
       (if _enableSkeleton (write-byte -1 s) (write-byte 0 s))
     ;; bool _enablePointingGesture
       (if _enablePointingGesture (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableWaveGesture
       (if _enableWaveGesture (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableLandmarks
       (if _enableLandmarks (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableHeadBoundingBox
       (if _enableHeadBoundingBox (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableHeadPose
       (if _enableHeadPose (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableRecognition
     (setq _enableRecognition (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableSkeleton
     (setq _enableSkeleton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enablePointingGesture
     (setq _enablePointingGesture (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableWaveGesture
     (setq _enableWaveGesture (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableLandmarks
     (setq _enableLandmarks (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableHeadBoundingBox
     (setq _enableHeadBoundingBox (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableHeadPose
     (setq _enableHeadPose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass realsense_ros_person::TrackingConfigResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_person::TrackingConfigResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass realsense_ros_person::TrackingConfig
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::TrackingConfig :md5sum-) "78e03ba522060c37577ef42678654b8c")
(setf (get realsense_ros_person::TrackingConfig :datatype-) "realsense_ros_person/TrackingConfig")
(setf (get realsense_ros_person::TrackingConfig :request) realsense_ros_person::TrackingConfigRequest)
(setf (get realsense_ros_person::TrackingConfig :response) realsense_ros_person::TrackingConfigResponse)

(defmethod realsense_ros_person::TrackingConfigRequest
  (:response () (instance realsense_ros_person::TrackingConfigResponse :init)))

(setf (get realsense_ros_person::TrackingConfigRequest :md5sum-) "78e03ba522060c37577ef42678654b8c")
(setf (get realsense_ros_person::TrackingConfigRequest :datatype-) "realsense_ros_person/TrackingConfigRequest")
(setf (get realsense_ros_person::TrackingConfigRequest :definition-)
      "bool enableRecognition
bool enableSkeleton
bool enablePointingGesture
bool enableWaveGesture
bool enableLandmarks
bool enableHeadBoundingBox
bool enableHeadPose
---
bool status

")

(setf (get realsense_ros_person::TrackingConfigResponse :md5sum-) "78e03ba522060c37577ef42678654b8c")
(setf (get realsense_ros_person::TrackingConfigResponse :datatype-) "realsense_ros_person/TrackingConfigResponse")
(setf (get realsense_ros_person::TrackingConfigResponse :definition-)
      "bool enableRecognition
bool enableSkeleton
bool enablePointingGesture
bool enableWaveGesture
bool enableLandmarks
bool enableHeadBoundingBox
bool enableHeadPose
---
bool status

")



(provide :realsense_ros_person/TrackingConfig "78e03ba522060c37577ef42678654b8c")


