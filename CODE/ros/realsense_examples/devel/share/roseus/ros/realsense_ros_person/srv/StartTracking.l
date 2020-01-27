;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::StartTracking)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'StartTracking (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::STARTTRACKING")
  (make-package "REALSENSE_ROS_PERSON::STARTTRACKING"))
(unless (find-package "REALSENSE_ROS_PERSON::STARTTRACKINGREQUEST")
  (make-package "REALSENSE_ROS_PERSON::STARTTRACKINGREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::STARTTRACKINGRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::STARTTRACKINGRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::StartTrackingRequest
  :super ros::object
  :slots (_personId ))

(defmethod realsense_ros_person::StartTrackingRequest
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

(defclass realsense_ros_person::StartTrackingResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_person::StartTrackingResponse
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

(defclass realsense_ros_person::StartTracking
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::StartTracking :md5sum-) "1b7f90a77bc2f8f3c4e3d407153b5435")
(setf (get realsense_ros_person::StartTracking :datatype-) "realsense_ros_person/StartTracking")
(setf (get realsense_ros_person::StartTracking :request) realsense_ros_person::StartTrackingRequest)
(setf (get realsense_ros_person::StartTracking :response) realsense_ros_person::StartTrackingResponse)

(defmethod realsense_ros_person::StartTrackingRequest
  (:response () (instance realsense_ros_person::StartTrackingResponse :init)))

(setf (get realsense_ros_person::StartTrackingRequest :md5sum-) "1b7f90a77bc2f8f3c4e3d407153b5435")
(setf (get realsense_ros_person::StartTrackingRequest :datatype-) "realsense_ros_person/StartTrackingRequest")
(setf (get realsense_ros_person::StartTrackingRequest :definition-)
      "int32 personId
---
bool status

")

(setf (get realsense_ros_person::StartTrackingResponse :md5sum-) "1b7f90a77bc2f8f3c4e3d407153b5435")
(setf (get realsense_ros_person::StartTrackingResponse :datatype-) "realsense_ros_person/StartTrackingResponse")
(setf (get realsense_ros_person::StartTrackingResponse :definition-)
      "int32 personId
---
bool status

")



(provide :realsense_ros_person/StartTracking "1b7f90a77bc2f8f3c4e3d407153b5435")


