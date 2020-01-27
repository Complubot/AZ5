;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::LoadRecognitionDB)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'LoadRecognitionDB (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::LOADRECOGNITIONDB")
  (make-package "REALSENSE_ROS_PERSON::LOADRECOGNITIONDB"))
(unless (find-package "REALSENSE_ROS_PERSON::LOADRECOGNITIONDBREQUEST")
  (make-package "REALSENSE_ROS_PERSON::LOADRECOGNITIONDBREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::LOADRECOGNITIONDBRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::LOADRECOGNITIONDBRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::LoadRecognitionDBRequest
  :super ros::object
  :slots (_loadFromPath ))

(defmethod realsense_ros_person::LoadRecognitionDBRequest
  (:init
   (&key
    ((:loadFromPath __loadFromPath) "")
    )
   (send-super :init)
   (setq _loadFromPath (string __loadFromPath))
   self)
  (:loadFromPath
   (&optional __loadFromPath)
   (if __loadFromPath (setq _loadFromPath __loadFromPath)) _loadFromPath)
  (:serialization-length
   ()
   (+
    ;; string _loadFromPath
    4 (length _loadFromPath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _loadFromPath
       (write-long (length _loadFromPath) s) (princ _loadFromPath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _loadFromPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _loadFromPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass realsense_ros_person::LoadRecognitionDBResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_person::LoadRecognitionDBResponse
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

(defclass realsense_ros_person::LoadRecognitionDB
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::LoadRecognitionDB :md5sum-) "1831e0f589127bcbfbf3f10b978cf7a3")
(setf (get realsense_ros_person::LoadRecognitionDB :datatype-) "realsense_ros_person/LoadRecognitionDB")
(setf (get realsense_ros_person::LoadRecognitionDB :request) realsense_ros_person::LoadRecognitionDBRequest)
(setf (get realsense_ros_person::LoadRecognitionDB :response) realsense_ros_person::LoadRecognitionDBResponse)

(defmethod realsense_ros_person::LoadRecognitionDBRequest
  (:response () (instance realsense_ros_person::LoadRecognitionDBResponse :init)))

(setf (get realsense_ros_person::LoadRecognitionDBRequest :md5sum-) "1831e0f589127bcbfbf3f10b978cf7a3")
(setf (get realsense_ros_person::LoadRecognitionDBRequest :datatype-) "realsense_ros_person/LoadRecognitionDBRequest")
(setf (get realsense_ros_person::LoadRecognitionDBRequest :definition-)
      "string loadFromPath
---
bool status

")

(setf (get realsense_ros_person::LoadRecognitionDBResponse :md5sum-) "1831e0f589127bcbfbf3f10b978cf7a3")
(setf (get realsense_ros_person::LoadRecognitionDBResponse :datatype-) "realsense_ros_person/LoadRecognitionDBResponse")
(setf (get realsense_ros_person::LoadRecognitionDBResponse :definition-)
      "string loadFromPath
---
bool status

")



(provide :realsense_ros_person/LoadRecognitionDB "1831e0f589127bcbfbf3f10b978cf7a3")


