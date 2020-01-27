;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Recognition)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Recognition (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::RECOGNITION")
  (make-package "REALSENSE_ROS_PERSON::RECOGNITION"))
(unless (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREQUEST")
  (make-package "REALSENSE_ROS_PERSON::RECOGNITIONREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::RecognitionRequest
  :super ros::object
  :slots (_personId ))

(defmethod realsense_ros_person::RecognitionRequest
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

(intern "*RECOGNITION_PASSED_PERSON_RECOGNIZED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_PASSED_PERSON_RECOGNIZED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_PASSED_PERSON_RECOGNIZED* 0)
(intern "*RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED* 1)
(intern "*RECOGNITION_FAILED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_FAILED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_FAILED* 2)
(intern "*RECOGNITION_FAILED_FACE_NOT_DETECTED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_FAILED_FACE_NOT_DETECTED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_FAILED_FACE_NOT_DETECTED* 3)
(intern "*RECOGNITION_FAILED_FACE_NOT_CLEAR*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_FAILED_FACE_NOT_CLEAR* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_FAILED_FACE_NOT_CLEAR* 4)
(intern "*RECOGNITION_FAILED_PERSON_TOO_FAR*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_FAILED_PERSON_TOO_FAR* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_FAILED_PERSON_TOO_FAR* 5)
(intern "*RECOGNITION_FAILED_PERSON_TOO_CLOSE*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_FAILED_PERSON_TOO_CLOSE* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_FAILED_PERSON_TOO_CLOSE* 6)
(intern "*RECOGNITION_FAILED_FACE_AMBIGUITY*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(shadow '*RECOGNITION_FAILED_FACE_AMBIGUITY* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONRESPONSE"))
(defconstant realsense_ros_person::RecognitionResponse::*RECOGNITION_FAILED_FACE_AMBIGUITY* 7)
(defclass realsense_ros_person::RecognitionResponse
  :super ros::object
  :slots (_status _recognitionId _similarityScore ))

(defmethod realsense_ros_person::RecognitionResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:recognitionId __recognitionId) 0)
    ((:similarityScore __similarityScore) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _recognitionId (round __recognitionId))
   (setq _similarityScore (float __similarityScore))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:recognitionId
   (&optional __recognitionId)
   (if __recognitionId (setq _recognitionId __recognitionId)) _recognitionId)
  (:similarityScore
   (&optional __similarityScore)
   (if __similarityScore (setq _similarityScore __similarityScore)) _similarityScore)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; int32 _recognitionId
    4
    ;; float32 _similarityScore
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; int32 _recognitionId
       (write-long _recognitionId s)
     ;; float32 _similarityScore
       (sys::poke _similarityScore (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _recognitionId
     (setq _recognitionId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _similarityScore
     (setq _similarityScore (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_ros_person::Recognition
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::Recognition :md5sum-) "2dd06767416b8aa59aeaa12368ef46df")
(setf (get realsense_ros_person::Recognition :datatype-) "realsense_ros_person/Recognition")
(setf (get realsense_ros_person::Recognition :request) realsense_ros_person::RecognitionRequest)
(setf (get realsense_ros_person::Recognition :response) realsense_ros_person::RecognitionResponse)

(defmethod realsense_ros_person::RecognitionRequest
  (:response () (instance realsense_ros_person::RecognitionResponse :init)))

(setf (get realsense_ros_person::RecognitionRequest :md5sum-) "2dd06767416b8aa59aeaa12368ef46df")
(setf (get realsense_ros_person::RecognitionRequest :datatype-) "realsense_ros_person/RecognitionRequest")
(setf (get realsense_ros_person::RecognitionRequest :definition-)
      "int32 personId
---
int32 status
int32 recognitionId
float32 similarityScore


int32 RECOGNITION_PASSED_PERSON_RECOGNIZED=0
int32 RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED=1
int32 RECOGNITION_FAILED=2
int32 RECOGNITION_FAILED_FACE_NOT_DETECTED=3
int32 RECOGNITION_FAILED_FACE_NOT_CLEAR=4
int32 RECOGNITION_FAILED_PERSON_TOO_FAR=5
int32 RECOGNITION_FAILED_PERSON_TOO_CLOSE=6
int32 RECOGNITION_FAILED_FACE_AMBIGUITY=7

")

(setf (get realsense_ros_person::RecognitionResponse :md5sum-) "2dd06767416b8aa59aeaa12368ef46df")
(setf (get realsense_ros_person::RecognitionResponse :datatype-) "realsense_ros_person/RecognitionResponse")
(setf (get realsense_ros_person::RecognitionResponse :definition-)
      "int32 personId
---
int32 status
int32 recognitionId
float32 similarityScore


int32 RECOGNITION_PASSED_PERSON_RECOGNIZED=0
int32 RECOGNITION_PASSED_PERSON_NOT_RECOGNIZED=1
int32 RECOGNITION_FAILED=2
int32 RECOGNITION_FAILED_FACE_NOT_DETECTED=3
int32 RECOGNITION_FAILED_FACE_NOT_CLEAR=4
int32 RECOGNITION_FAILED_PERSON_TOO_FAR=5
int32 RECOGNITION_FAILED_PERSON_TOO_CLOSE=6
int32 RECOGNITION_FAILED_FACE_AMBIGUITY=7

")



(provide :realsense_ros_person/Recognition "2dd06767416b8aa59aeaa12368ef46df")


