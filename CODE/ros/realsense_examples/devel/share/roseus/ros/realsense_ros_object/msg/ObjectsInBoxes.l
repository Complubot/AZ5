;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::ObjectsInBoxes)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'ObjectsInBoxes (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::OBJECTSINBOXES")
  (make-package "REALSENSE_ROS_OBJECT::OBJECTSINBOXES"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInBoxes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass realsense_ros_object::ObjectsInBoxes
  :super ros::object
  :slots (_header _objects_vector ))

(defmethod realsense_ros_object::ObjectsInBoxes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects_vector __objects_vector) (let (r) (dotimes (i 0) (push (instance realsense_ros_object::ObjectInBox :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects_vector __objects_vector)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects_vector
   (&rest __objects_vector)
   (if (keywordp (car __objects_vector))
       (send* _objects_vector __objects_vector)
     (progn
       (if __objects_vector (setq _objects_vector (car __objects_vector)))
       _objects_vector)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; realsense_ros_object/ObjectInBox[] _objects_vector
    (apply #'+ (send-all _objects_vector :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; realsense_ros_object/ObjectInBox[] _objects_vector
     (write-long (length _objects_vector) s)
     (dolist (elem _objects_vector)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; realsense_ros_object/ObjectInBox[] _objects_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_vector (let (r) (dotimes (i n) (push (instance realsense_ros_object::ObjectInBox :init) r)) r))
     (dolist (elem- _objects_vector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realsense_ros_object::ObjectsInBoxes :md5sum-) "766265c76170a5de1a5179aa1e37cf42")
(setf (get realsense_ros_object::ObjectsInBoxes :datatype-) "realsense_ros_object/ObjectsInBoxes")
(setf (get realsense_ros_object::ObjectsInBoxes :definition-)
      "std_msgs/Header header
ObjectInBox[] objects_vector
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
MSG: realsense_ros_object/ObjectInBox
Object object
Rect object_bbox
Location3D location

================================================================================
MSG: realsense_ros_object/Object
int32 label
string object_name
float32 probability

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



(provide :realsense_ros_object/ObjectsInBoxes "766265c76170a5de1a5179aa1e37cf42")


