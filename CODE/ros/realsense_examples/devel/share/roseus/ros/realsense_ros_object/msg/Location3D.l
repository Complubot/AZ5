;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::Location3D)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'Location3D (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::LOCATION3D")
  (make-package "REALSENSE_ROS_OBJECT::LOCATION3D"))

(in-package "ROS")
;;//! \htmlinclude Location3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass realsense_ros_object::Location3D
  :super ros::object
  :slots (_coordinates _horiz_margin _vert_margin ))

(defmethod realsense_ros_object::Location3D
  (:init
   (&key
    ((:coordinates __coordinates) (instance geometry_msgs::Point32 :init))
    ((:horiz_margin __horiz_margin) 0.0)
    ((:vert_margin __vert_margin) 0.0)
    )
   (send-super :init)
   (setq _coordinates __coordinates)
   (setq _horiz_margin (float __horiz_margin))
   (setq _vert_margin (float __vert_margin))
   self)
  (:coordinates
   (&rest __coordinates)
   (if (keywordp (car __coordinates))
       (send* _coordinates __coordinates)
     (progn
       (if __coordinates (setq _coordinates (car __coordinates)))
       _coordinates)))
  (:horiz_margin
   (&optional __horiz_margin)
   (if __horiz_margin (setq _horiz_margin __horiz_margin)) _horiz_margin)
  (:vert_margin
   (&optional __vert_margin)
   (if __vert_margin (setq _vert_margin __vert_margin)) _vert_margin)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _coordinates
    (send _coordinates :serialization-length)
    ;; float32 _horiz_margin
    4
    ;; float32 _vert_margin
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _coordinates
       (send _coordinates :serialize s)
     ;; float32 _horiz_margin
       (sys::poke _horiz_margin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vert_margin
       (sys::poke _vert_margin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _coordinates
     (send _coordinates :deserialize buf ptr-) (incf ptr- (send _coordinates :serialization-length))
   ;; float32 _horiz_margin
     (setq _horiz_margin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vert_margin
     (setq _vert_margin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_object::Location3D :md5sum-) "9d0d637baabd2a2edf3e785062238586")
(setf (get realsense_ros_object::Location3D :datatype-) "realsense_ros_object/Location3D")
(setf (get realsense_ros_object::Location3D :definition-)
      "geometry_msgs/Point32 coordinates
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



(provide :realsense_ros_object/Location3D "9d0d637baabd2a2edf3e785062238586")


