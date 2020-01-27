;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_slam::SaveOutput)
  (if (not (find-package "REALSENSE_ROS_SLAM"))
    (make-package "REALSENSE_ROS_SLAM"))
  (shadow 'SaveOutput (find-package "REALSENSE_ROS_SLAM")))
(unless (find-package "REALSENSE_ROS_SLAM::SAVEOUTPUT")
  (make-package "REALSENSE_ROS_SLAM::SAVEOUTPUT"))
(unless (find-package "REALSENSE_ROS_SLAM::SAVEOUTPUTREQUEST")
  (make-package "REALSENSE_ROS_SLAM::SAVEOUTPUTREQUEST"))
(unless (find-package "REALSENSE_ROS_SLAM::SAVEOUTPUTRESPONSE")
  (make-package "REALSENSE_ROS_SLAM::SAVEOUTPUTRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_slam::SaveOutputRequest
  :super ros::object
  :slots ())

(defmethod realsense_ros_slam::SaveOutputRequest
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

(defclass realsense_ros_slam::SaveOutputResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_slam::SaveOutputResponse
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

(defclass realsense_ros_slam::SaveOutput
  :super ros::object
  :slots ())

(setf (get realsense_ros_slam::SaveOutput :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get realsense_ros_slam::SaveOutput :datatype-) "realsense_ros_slam/SaveOutput")
(setf (get realsense_ros_slam::SaveOutput :request) realsense_ros_slam::SaveOutputRequest)
(setf (get realsense_ros_slam::SaveOutput :response) realsense_ros_slam::SaveOutputResponse)

(defmethod realsense_ros_slam::SaveOutputRequest
  (:response () (instance realsense_ros_slam::SaveOutputResponse :init)))

(setf (get realsense_ros_slam::SaveOutputRequest :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get realsense_ros_slam::SaveOutputRequest :datatype-) "realsense_ros_slam/SaveOutputRequest")
(setf (get realsense_ros_slam::SaveOutputRequest :definition-)
      "---
bool status

")

(setf (get realsense_ros_slam::SaveOutputResponse :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get realsense_ros_slam::SaveOutputResponse :datatype-) "realsense_ros_slam/SaveOutputResponse")
(setf (get realsense_ros_slam::SaveOutputResponse :definition-)
      "---
bool status

")



(provide :realsense_ros_slam/SaveOutput "3a1255d4d998bd4d6585c64639b5ee9a")


