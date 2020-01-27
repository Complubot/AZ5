;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::ObjectInBox)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'ObjectInBox (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::OBJECTINBOX")
  (make-package "REALSENSE_ROS_OBJECT::OBJECTINBOX"))

(in-package "ROS")
;;//! \htmlinclude ObjectInBox.msg.html


(defclass realsense_ros_object::ObjectInBox
  :super ros::object
  :slots (_object _object_bbox _location ))

(defmethod realsense_ros_object::ObjectInBox
  (:init
   (&key
    ((:object __object) (instance realsense_ros_object::Object :init))
    ((:object_bbox __object_bbox) (instance realsense_ros_object::Rect :init))
    ((:location __location) (instance realsense_ros_object::Location3D :init))
    )
   (send-super :init)
   (setq _object __object)
   (setq _object_bbox __object_bbox)
   (setq _location __location)
   self)
  (:object
   (&rest __object)
   (if (keywordp (car __object))
       (send* _object __object)
     (progn
       (if __object (setq _object (car __object)))
       _object)))
  (:object_bbox
   (&rest __object_bbox)
   (if (keywordp (car __object_bbox))
       (send* _object_bbox __object_bbox)
     (progn
       (if __object_bbox (setq _object_bbox (car __object_bbox)))
       _object_bbox)))
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; realsense_ros_object/Object _object
    (send _object :serialization-length)
    ;; realsense_ros_object/Rect _object_bbox
    (send _object_bbox :serialization-length)
    ;; realsense_ros_object/Location3D _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_ros_object/Object _object
       (send _object :serialize s)
     ;; realsense_ros_object/Rect _object_bbox
       (send _object_bbox :serialize s)
     ;; realsense_ros_object/Location3D _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_ros_object/Object _object
     (send _object :deserialize buf ptr-) (incf ptr- (send _object :serialization-length))
   ;; realsense_ros_object/Rect _object_bbox
     (send _object_bbox :deserialize buf ptr-) (incf ptr- (send _object_bbox :serialization-length))
   ;; realsense_ros_object/Location3D _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_object::ObjectInBox :md5sum-) "506c556ef4808f18c8fda7a0b6d365a7")
(setf (get realsense_ros_object::ObjectInBox :datatype-) "realsense_ros_object/ObjectInBox")
(setf (get realsense_ros_object::ObjectInBox :definition-)
      "Object object
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



(provide :realsense_ros_object/ObjectInBox "506c556ef4808f18c8fda7a0b6d365a7")


