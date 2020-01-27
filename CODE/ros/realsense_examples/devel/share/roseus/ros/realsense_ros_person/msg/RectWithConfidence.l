;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_person::RectWithConfidence)
  (if (not (find-package "REALSENSE_ROS_PERSON"))
    (make-package "REALSENSE_ROS_PERSON"))
  (shadow 'RectWithConfidence (find-package "REALSENSE_ROS_PERSON")))
(unless (find-package "REALSENSE_ROS_PERSON::RECTWITHCONFIDENCE")
  (make-package "REALSENSE_ROS_PERSON::RECTWITHCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude RectWithConfidence.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_ros_person::RectWithConfidence
  :super ros::object
  :slots (_confidence _rectCorners ))

(defmethod realsense_ros_person::RectWithConfidence
  (:init
   (&key
    ((:confidence __confidence) 0)
    ((:rectCorners __rectCorners) (let (r) (dotimes (i 2) (push (instance geometry_msgs::Point32 :init) r)) r))
    )
   (send-super :init)
   (setq _confidence (round __confidence))
   (setq _rectCorners __rectCorners)
   self)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:rectCorners
   (&rest __rectCorners)
   (if (keywordp (car __rectCorners))
       (send* _rectCorners __rectCorners)
     (progn
       (if __rectCorners (setq _rectCorners (car __rectCorners)))
       _rectCorners)))
  (:serialization-length
   ()
   (+
    ;; int32 _confidence
    4
    ;; geometry_msgs/Point32[2] _rectCorners
    (apply #'+ (send-all _rectCorners :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _confidence
       (write-long _confidence s)
     ;; geometry_msgs/Point32[2] _rectCorners
     (dolist (elem _rectCorners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _confidence
     (setq _confidence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32[2] _rectCorners
   (dotimes (i 2)
     (send (elt _rectCorners i) :deserialize buf ptr-) (incf ptr- (send (elt _rectCorners i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get realsense_ros_person::RectWithConfidence :md5sum-) "a4605f6e3ec78453799435502960c372")
(setf (get realsense_ros_person::RectWithConfidence :datatype-) "realsense_ros_person/RectWithConfidence")
(setf (get realsense_ros_person::RectWithConfidence :definition-)
      "int32 confidence
geometry_msgs/Point32[2] rectCorners

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :realsense_ros_person/RectWithConfidence "a4605f6e3ec78453799435502960c372")


