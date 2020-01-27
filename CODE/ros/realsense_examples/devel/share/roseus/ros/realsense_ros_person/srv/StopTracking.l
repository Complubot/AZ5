;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::StopTracking)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'StopTracking (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::STOPTRACKING")
  (make-package "REALSENSE_ROS_PERSON::STOPTRACKING"))
(unless (find-package "REALSENSE_ROS_PERSON::STOPTRACKINGREQUEST")
  (make-package "REALSENSE_ROS_PERSON::STOPTRACKINGREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::STOPTRACKINGRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::STOPTRACKINGRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::StopTrackingRequest
  :super ros::object
  :slots (_personId ))

(defmethod realsense_ros_person::StopTrackingRequest
  (:init
   (&key
    ((:personId __personId) 0)
    )
   (send-super :init)
   (setq _personId (round __personId))
   self)
  (:personId
   (&optional __personId)
   (if __personId (setq _personId __personId)) _personId)
  (:serialization-length
   ()
   (+
    ;; int32 _personId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _personId
       (write-long _personId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _personId
     (setq _personId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_ros_person::StopTrackingResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_person::StopTrackingResponse
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

(defclass realsense_ros_person::StopTracking
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::StopTracking :md5sum-) "1b7f90a77bc2f8f3c4e3d407153b5435")
(setf (get realsense_ros_person::StopTracking :datatype-) "realsense_ros_person/StopTracking")
(setf (get realsense_ros_person::StopTracking :request) realsense_ros_person::StopTrackingRequest)
(setf (get realsense_ros_person::StopTracking :response) realsense_ros_person::StopTrackingResponse)

(defmethod realsense_ros_person::StopTrackingRequest
  (:response () (instance realsense_ros_person::StopTrackingResponse :init)))

(setf (get realsense_ros_person::StopTrackingRequest :md5sum-) "1b7f90a77bc2f8f3c4e3d407153b5435")
(setf (get realsense_ros_person::StopTrackingRequest :datatype-) "realsense_ros_person/StopTrackingRequest")
(setf (get realsense_ros_person::StopTrackingRequest :definition-)
      "int32 personId
---
bool status

")

(setf (get realsense_ros_person::StopTrackingResponse :md5sum-) "1b7f90a77bc2f8f3c4e3d407153b5435")
(setf (get realsense_ros_person::StopTrackingResponse :datatype-) "realsense_ros_person/StopTrackingResponse")
(setf (get realsense_ros_person::StopTrackingResponse :definition-)
      "int32 personId
---
bool status

")



(provide :realsense_ros_person/StopTracking "1b7f90a77bc2f8f3c4e3d407153b5435")


