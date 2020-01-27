;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::TrackedObjectsArray)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'TrackedObjectsArray (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::TRACKEDOBJECTSARRAY")
  (make-package "REALSENSE_ROS_OBJECT::TRACKEDOBJECTSARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrackedObjectsArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realsense_ros_object::TrackedObjectsArray
  :super ros::object
  :slots (_header _tracked_objects_vector ))

(defmethod realsense_ros_object::TrackedObjectsArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracked_objects_vector __tracked_objects_vector) (let (r) (dotimes (i 0) (push (instance realsense_ros_object::TrackedObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracked_objects_vector __tracked_objects_vector)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracked_objects_vector
   (&rest __tracked_objects_vector)
   (if (keywordp (car __tracked_objects_vector))
       (send* _tracked_objects_vector __tracked_objects_vector)
     (progn
       (if __tracked_objects_vector (setq _tracked_objects_vector (car __tracked_objects_vector)))
       _tracked_objects_vector)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; realsense_ros_object/TrackedObject[] _tracked_objects_vector
    (apply #'+ (send-all _tracked_objects_vector :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; realsense_ros_object/TrackedObject[] _tracked_objects_vector
     (write-long (length _tracked_objects_vector) s)
     (dolist (elem _tracked_objects_vector)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; realsense_ros_object/TrackedObject[] _tracked_objects_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracked_objects_vector (let (r) (dotimes (i n) (push (instance realsense_ros_object::TrackedObject :init) r)) r))
     (dolist (elem- _tracked_objects_vector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realsense_ros_object::TrackedObjectsArray :md5sum-) "eba302ff867767c2d7dce5a9b84a6ec3")
(setf (get realsense_ros_object::TrackedObjectsArray :datatype-) "realsense_ros_object/TrackedObjectsArray")
(setf (get realsense_ros_object::TrackedObjectsArray :definition-)
      "std_msgs/Header header
TrackedObject[] tracked_objects_vector

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

================================================================================
MSG: realsense_ros_object/TrackedObject
Rect bbox
int32 id 
Location3D location

================================================================================
MSG: realsense_ros_object/Rect
int32 x
int32 y
int32 height
int32 width

================================================================================
MSG: realsense_ros_object/Location3D
geometry_msgs/Point32 coordinates
float32 horiz_margin
float32 vert_margin

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



(provide :realsense_ros_object/TrackedObjectsArray "eba302ff867767c2d7dce5a9b84a6ec3")


