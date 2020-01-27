;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::RecognitionRegister)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'RecognitionRegister (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTER")
  (make-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTER"))
(unless (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERREQUEST")
  (make-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERREQUEST"))
(unless (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE")
  (make-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))

(in-package "ROS")





(defclass realsense_ros_person::RecognitionRegisterRequest
  :super ros::object
  :slots (_personId ))

(defmethod realsense_ros_person::RecognitionRegisterRequest
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

(intern "*REGISTRATION_SUCCESSFULL*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_SUCCESSFULL* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_SUCCESSFULL* 0)
(intern "*REGISTRATION_FAILED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_FAILED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_FAILED* 1)
(intern "*REGISTRATION_FAILED_ALREADY_REGISTERED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_FAILED_ALREADY_REGISTERED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_FAILED_ALREADY_REGISTERED* 2)
(intern "*REGISTRATION_FAILED_FACE_NOT_DETECTED*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_FAILED_FACE_NOT_DETECTED* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_FAILED_FACE_NOT_DETECTED* 3)
(intern "*REGISTRATION_FAILED_FACE_NOT_CLEAR*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_FAILED_FACE_NOT_CLEAR* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_FAILED_FACE_NOT_CLEAR* 4)
(intern "*REGISTRATION_FAILED_PERSON_TO_FAR*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_FAILED_PERSON_TO_FAR* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_FAILED_PERSON_TO_FAR* 5)
(intern "*REGISTRATION_FAILED_PERSON_TO_CLOSE*" (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(shadow '*REGISTRATION_FAILED_PERSON_TO_CLOSE* (find-package "REALSENSE_ROS_PERSON::RECOGNITIONREGISTERRESPONSE"))
(defconstant realsense_ros_person::RecognitionRegisterResponse::*REGISTRATION_FAILED_PERSON_TO_CLOSE* 6)
(defclass realsense_ros_person::RecognitionRegisterResponse
  :super ros::object
  :slots (_status _recognitionId ))

(defmethod realsense_ros_person::RecognitionRegisterResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:recognitionId __recognitionId) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _recognitionId (round __recognitionId))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:recognitionId
   (&optional __recognitionId)
   (if __recognitionId (setq _recognitionId __recognitionId)) _recognitionId)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; int32 _recognitionId
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _recognitionId
     (setq _recognitionId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass realsense_ros_person::RecognitionRegister
  :super ros::object
  :slots ())

(setf (get realsense_ros_person::RecognitionRegister :md5sum-) "a15e83a449eea8ad719fcbd487f8e4ca")
(setf (get realsense_ros_person::RecognitionRegister :datatype-) "realsense_ros_person/RecognitionRegister")
(setf (get realsense_ros_person::RecognitionRegister :request) realsense_ros_person::RecognitionRegisterRequest)
(setf (get realsense_ros_person::RecognitionRegister :response) realsense_ros_person::RecognitionRegisterResponse)

(defmethod realsense_ros_person::RecognitionRegisterRequest
  (:response () (instance realsense_ros_person::RecognitionRegisterResponse :init)))

(setf (get realsense_ros_person::RecognitionRegisterRequest :md5sum-) "a15e83a449eea8ad719fcbd487f8e4ca")
(setf (get realsense_ros_person::RecognitionRegisterRequest :datatype-) "realsense_ros_person/RecognitionRegisterRequest")
(setf (get realsense_ros_person::RecognitionRegisterRequest :definition-)
      "int32 personId
---
int32 status
int32 recognitionId


int32 REGISTRATION_SUCCESSFULL=0
int32 REGISTRATION_FAILED=1
int32 REGISTRATION_FAILED_ALREADY_REGISTERED=2
int32 REGISTRATION_FAILED_FACE_NOT_DETECTED=3
int32 REGISTRATION_FAILED_FACE_NOT_CLEAR=4
int32 REGISTRATION_FAILED_PERSON_TO_FAR=5
int32 REGISTRATION_FAILED_PERSON_TO_CLOSE=6

")

(setf (get realsense_ros_person::RecognitionRegisterResponse :md5sum-) "a15e83a449eea8ad719fcbd487f8e4ca")
(setf (get realsense_ros_person::RecognitionRegisterResponse :datatype-) "realsense_ros_person/RecognitionRegisterResponse")
(setf (get realsense_ros_person::RecognitionRegisterResponse :definition-)
      "int32 personId
---
int32 status
int32 recognitionId


int32 REGISTRATION_SUCCESSFULL=0
int32 REGISTRATION_FAILED=1
int32 REGISTRATION_FAILED_ALREADY_REGISTERED=2
int32 REGISTRATION_FAILED_FACE_NOT_DETECTED=3
int32 REGISTRATION_FAILED_FACE_NOT_CLEAR=4
int32 REGISTRATION_FAILED_PERSON_TO_FAR=5
int32 REGISTRATION_FAILED_PERSON_TO_CLOSE=6

")



(provide :realsense_ros_person/RecognitionRegister "a15e83a449eea8ad719fcbd487f8e4ca")


