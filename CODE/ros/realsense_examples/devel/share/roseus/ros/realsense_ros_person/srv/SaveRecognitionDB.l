;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::SaveRecognitionDB)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'SaveRecognitionDB (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::SAVERECOGNITIONDB")
  (make-package "REALSENSE_ROS_PERSON::SAVERECOGNITIONDB"))
(unless (find-package "REALSENSE_ROS_PERSON::SAVERECOGNITIONDBREQUEST")
  (make-package "REALSENSE_ROS_PERSON::SAVERECOGNITIONDBREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::SAVERECOGNITIONDBRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::SAVERECOGNITIONDBRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::SaveRecognitionDBRequest
  :super ros::object
  :slots (_saveToPath ))

(defmethod realsense_ros_person::SaveRecognitionDBRequest
  (:init
   (&key
    ((:saveToPath __saveToPath) "")
    )
   (send-super :init)
   (setq _saveToPath (string __saveToPath))
   self)
  (:saveToPath
   (&optional __saveToPath)
   (if __saveToPath (setq _saveToPath __saveToPath)) _saveToPath)
  (:serialization-length
   ()
   (+
    ;; string _saveToPath
    4 (length _saveToPath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _saveToPath
       (write-long (length _saveToPath) s) (princ _saveToPath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _saveToPath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _saveToPath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass realsense_ros_person::SaveRecognitionDBResponse
  :super ros::object
  :slots (_status ))

(defmethod realsense_ros_person::SaveRecognitionDBResponse
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

(defclass realsense_ros_person::SaveRecognitionDB
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::SaveRecognitionDB :md5sum-) "1de971d723014a924e8ac6f15d9d1728")
(setf (get realsense_ros_person::SaveRecognitionDB :datatype-) "realsense_ros_person/SaveRecognitionDB")
(setf (get realsense_ros_person::SaveRecognitionDB :request) realsense_ros_person::SaveRecognitionDBRequest)
(setf (get realsense_ros_person::SaveRecognitionDB :response) realsense_ros_person::SaveRecognitionDBResponse)

(defmethod realsense_ros_person::SaveRecognitionDBRequest
  (:response () (instance realsense_ros_person::SaveRecognitionDBResponse :init)))

(setf (get realsense_ros_person::SaveRecognitionDBRequest :md5sum-) "1de971d723014a924e8ac6f15d9d1728")
(setf (get realsense_ros_person::SaveRecognitionDBRequest :datatype-) "realsense_ros_person/SaveRecognitionDBRequest")
(setf (get realsense_ros_person::SaveRecognitionDBRequest :definition-)
      "string saveToPath
---
bool status

")

(setf (get realsense_ros_person::SaveRecognitionDBResponse :md5sum-) "1de971d723014a924e8ac6f15d9d1728")
(setf (get realsense_ros_person::SaveRecognitionDBResponse :datatype-) "realsense_ros_person/SaveRecognitionDBResponse")
(setf (get realsense_ros_person::SaveRecognitionDBResponse :definition-)
      "string saveToPath
---
bool status

")



(provide :realsense_ros_person/SaveRecognitionDB "1de971d723014a924e8ac6f15d9d1728")


