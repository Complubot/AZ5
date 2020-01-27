;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_slam::Reset)
  (if (not (find-package "REALSENSE_ROS_SLAM"))
    (make-package "REALSENSE_ROS_SLAM"))
  (shadow 'Reset (find-package "REALSENSE_ROS_SLAM")))
(unless (find-package "REALSENSE_ROS_SLAM::RESET")
  (make-package "REALSENSE_ROS_SLAM::RESET"))
(unless (find-package "REALSENSE_ROS_SLAM::RESETREQUEST")
  (make-package "REALSENSE_ROS_SLAM::RESETREQUEST"))
(unless (find-package "REALSENSE_ROS_SLAM::RESETRESPONSE")
  (make-package "REALSENSE_ROS_SLAM::RESETRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_slam::ResetRequest
  :super ros::object
  :slots ())

(defmethod realsense_ros_slam::ResetRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass realsense_ros_slam::ResetResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_slam::ResetResponse
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

(defclass realsense_ros_slam::Reset
  :super ros::object
  :slots ())

(setf (get realsense_ros_slam::Reset :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get realsense_ros_slam::Reset :datatype-) "realsense_ros_slam/Reset")
(setf (get realsense_ros_slam::Reset :request) realsense_ros_slam::ResetRequest)
(setf (get realsense_ros_slam::Reset :response) realsense_ros_slam::ResetResponse)

(defmethod realsense_ros_slam::ResetRequest
  (:response () (instance realsense_ros_slam::ResetResponse :init)))

(setf (get realsense_ros_slam::ResetRequest :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get realsense_ros_slam::ResetRequest :datatype-) "realsense_ros_slam/ResetRequest")
(setf (get realsense_ros_slam::ResetRequest :definition-)
      "---
bool status

")

(setf (get realsense_ros_slam::ResetResponse :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get realsense_ros_slam::ResetResponse :datatype-) "realsense_ros_slam/ResetResponse")
(setf (get realsense_ros_slam::ResetResponse :definition-)
      "---
bool status

")



(provide :realsense_ros_slam/Reset "3a1255d4d998bd4d6585c64639b5ee9a")


