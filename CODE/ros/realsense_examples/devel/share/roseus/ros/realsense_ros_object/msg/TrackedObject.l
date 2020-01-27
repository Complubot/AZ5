;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::TrackedObject)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'TrackedObject (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::TRACKEDOBJECT")
  (make-package "REALSENSE_ROS_OBJECT::TRACKEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TrackedObject.msg.html


(defclass realsense_ros_object::TrackedObject
  :super ros::object
  :slots (_bbox _id _location ))

(defmethod realsense_ros_object::TrackedObject
  (:init
   (&key
    ((:bbox __bbox) (instance realsense_ros_object::Rect :init))
    ((:id __id) 0)
    ((:location __location) (instance realsense_ros_object::Location3D :init))
    )
   (send-super :init)
   (setq _bbox __bbox)
   (setq _id (round __id))
   (setq _location __location)
   self)
  (:bbox
   (&rest __bbox)
   (if (keywordp (car __bbox))
       (send* _bbox __bbox)
     (progn
       (if __bbox (setq _bbox (car __bbox)))
       _bbox)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; realsense_ros_object/Rect _bbox
    (send _bbox :serialization-length)
    ;; int32 _id
    4
    ;; realsense_ros_object/Location3D _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_ros_object/Rect _bbox
       (send _bbox :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; realsense_ros_object/Location3D _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_ros_object/Rect _bbox
     (send _bbox :deserialize buf ptr-) (incf ptr- (send _bbox :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; realsense_ros_object/Location3D _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(setf (get realsense_ros_object::TrackedObject :md5sum-) "49a76037ad24b477fa0d232ca39d6579")
(setf (get realsense_ros_object::TrackedObject :datatype-) "realsense_ros_object/TrackedObject")
(setf (get realsense_ros_object::TrackedObject :definition-)
      "Rect bbox
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



(provide :realsense_ros_object/TrackedObject "49a76037ad24b477fa0d232ca39d6579")


