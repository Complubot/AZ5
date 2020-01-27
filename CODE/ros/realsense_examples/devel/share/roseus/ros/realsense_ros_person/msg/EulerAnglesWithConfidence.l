;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::EulerAnglesWithConfidence)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'EulerAnglesWithConfidence (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::EULERANGLESWITHCONFIDENCE")
  (make-package "REALSENSE_ROS_PERSON::EULERANGLESWITHCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude EulerAnglesWithConfidence.msg.html


(defclass realsense_ros_person::EulerAnglesWithConfidence
  :super ros::object
  :slots (_angles _confidence ))

(defmethod realsense_ros_person::EulerAnglesWithConfidence
  (:init
   (&key
    ((:angles __angles) (instance realsense_ros_person::EulerAngles :init))
    ((:confidence __confidence) 0)
    )
   (send-super :init)
   (setq _angles __angles)
   (setq _confidence (round __confidence))
   self)
  (:angles
   (&rest __angles)
   (if (keywordp (car __angles))
       (send* _angles __angles)
     (progn
       (if __angles (setq _angles (car __angles)))
       _angles)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; realsense_ros_person/EulerAngles _angles
    (send _angles :serialization-length)
    ;; int32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_ros_person/EulerAngles _angles
       (send _angles :serialize s)
     ;; int32 _confidence
       (write-long _confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_ros_person/EulerAngles _angles
     (send _angles :deserialize buf ptr-) (incf ptr- (send _angles :serialization-length))
   ;; int32 _confidence
     (setq _confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_person::EulerAnglesWithConfidence :md5sum-) "5e76354a4d10460adcef4d7d5dd74f1f")
(setf (get realsense_ros_person::EulerAnglesWithConfidence :datatype-) "realsense_ros_person/EulerAnglesWithConfidence")
(setf (get realsense_ros_person::EulerAnglesWithConfidence :definition-)
      "EulerAngles angles
int32 confidence

================================================================================
MSG: realsense_ros_person/EulerAngles
float32 pitch
float32 roll
float32 yaw

")



(provide :realsense_ros_person/EulerAnglesWithConfidence "5e76354a4d10460adcef4d7d5dd74f1f")


