;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_slam::TrackingAccuracy)
  (if (not (find-package "REALSENSE_ROS_SLAM"))
    (make-package "REALSENSE_ROS_SLAM"))
  (shadow 'TrackingAccuracy (find-package "REALSENSE_ROS_SLAM")))
(unless (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY")
  (make-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))

(in-package "ROS")
;;//! \htmlinclude TrackingAccuracy.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TRACKING_ACCURACY_FAILED*" (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(shadow '*TRACKING_ACCURACY_FAILED* (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(defconstant realsense_ros_slam::TrackingAccuracy::*TRACKING_ACCURACY_FAILED* 0)
(intern "*TRACKING_ACCURACY_LOW*" (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(shadow '*TRACKING_ACCURACY_LOW* (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(defconstant realsense_ros_slam::TrackingAccuracy::*TRACKING_ACCURACY_LOW* 1)
(intern "*TRACKING_ACCURACY_MEDIUM*" (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(shadow '*TRACKING_ACCURACY_MEDIUM* (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(defconstant realsense_ros_slam::TrackingAccuracy::*TRACKING_ACCURACY_MEDIUM* 2)
(intern "*TRACKING_ACCURACY_HIGH*" (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(shadow '*TRACKING_ACCURACY_HIGH* (find-package "REALSENSE_ROS_SLAM::TRACKINGACCURACY"))
(defconstant realsense_ros_slam::TrackingAccuracy::*TRACKING_ACCURACY_HIGH* 3)
(defclass realsense_ros_slam::TrackingAccuracy
  :super ros::object
  :slots (_header _tracking_accuracy ))

(defmethod realsense_ros_slam::TrackingAccuracy
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracking_accuracy __tracking_accuracy) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracking_accuracy (round __tracking_accuracy))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracking_accuracy
   (&optional __tracking_accuracy)
   (if __tracking_accuracy (setq _tracking_accuracy __tracking_accuracy)) _tracking_accuracy)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _tracking_accuracy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _tracking_accuracy
       (write-long _tracking_accuracy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _tracking_accuracy
     (setq _tracking_accuracy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_slam::TrackingAccuracy :md5sum-) "f02ead1dd88aaa736f807c98890ab00c")
(setf (get realsense_ros_slam::TrackingAccuracy :datatype-) "realsense_ros_slam/TrackingAccuracy")
(setf (get realsense_ros_slam::TrackingAccuracy :definition-)
      "std_msgs/Header header
uint32 tracking_accuracy

#tracking_accuracy types constants
int32 TRACKING_ACCURACY_FAILED=0
int32 TRACKING_ACCURACY_LOW=1
int32 TRACKING_ACCURACY_MEDIUM=2
int32 TRACKING_ACCURACY_HIGH=3

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :realsense_ros_slam/TrackingAccuracy "f02ead1dd88aaa736f807c98890ab00c")


