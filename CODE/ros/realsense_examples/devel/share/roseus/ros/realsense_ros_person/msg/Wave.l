;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::Wave)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'Wave (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::WAVE")
  (make-package "REALSENSE_ROS_PERSON::WAVE"))

(in-package "ROS")
;;//! \htmlinclude Wave.msg.html


(intern "*WAVE_NOT_DETECTED*" (find-package "REALSENSE_ROS_PERSON::WAVE"))
(shadow '*WAVE_NOT_DETECTED* (find-package "REALSENSE_ROS_PERSON::WAVE"))
(defconstant realsense_ros_person::Wave::*WAVE_NOT_DETECTED* -1)
(intern "*WAVE_LEFT_LA*" (find-package "REALSENSE_ROS_PERSON::WAVE"))
(shadow '*WAVE_LEFT_LA* (find-package "REALSENSE_ROS_PERSON::WAVE"))
(defconstant realsense_ros_person::Wave::*WAVE_LEFT_LA* 1)
(intern "*WAVE_RIGHT_LA*" (find-package "REALSENSE_ROS_PERSON::WAVE"))
(shadow '*WAVE_RIGHT_LA* (find-package "REALSENSE_ROS_PERSON::WAVE"))
(defconstant realsense_ros_person::Wave::*WAVE_RIGHT_LA* 2)
(intern "*WAVE_LEFT_RA*" (find-package "REALSENSE_ROS_PERSON::WAVE"))
(shadow '*WAVE_LEFT_RA* (find-package "REALSENSE_ROS_PERSON::WAVE"))
(defconstant realsense_ros_person::Wave::*WAVE_LEFT_RA* 3)
(intern "*WAVE_RIGHT_RA*" (find-package "REALSENSE_ROS_PERSON::WAVE"))
(shadow '*WAVE_RIGHT_RA* (find-package "REALSENSE_ROS_PERSON::WAVE"))
(defconstant realsense_ros_person::Wave::*WAVE_RIGHT_RA* 4)
(defclass realsense_ros_person::Wave
  :super ros::object
  :slots (_type ))

(defmethod realsense_ros_person::Wave
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_person::Wave :md5sum-) "bf1a205054ef9c51f0b3b2426adfe39a")
(setf (get realsense_ros_person::Wave :datatype-) "realsense_ros_person/Wave")
(setf (get realsense_ros_person::Wave :definition-)
      "int32 type

#Wave gesture types
int32 WAVE_NOT_DETECTED=-1 # Wave not detected 
int32 WAVE_LEFT_LA=1       # Wave ended with hand motion to the left, in the left area
int32 WAVE_RIGHT_LA=2      # Wave ended with hand motion to the right, in the left area
int32 WAVE_LEFT_RA=3       # Wave ended with hand motion to the left, in the right area
int32 WAVE_RIGHT_RA=4      # Wave ended with hand motion to the right, in the right area


")



(provide :realsense_ros_person/Wave "bf1a205054ef9c51f0b3b2426adfe39a")


