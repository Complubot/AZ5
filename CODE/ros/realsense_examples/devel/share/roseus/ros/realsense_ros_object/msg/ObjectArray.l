;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::ObjectArray)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'ObjectArray (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::OBJECTARRAY")
  (make-package "REALSENSE_ROS_OBJECT::OBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectArray.msg.html


(defclass realsense_ros_object::ObjectArray
  :super ros::object
  :slots (_objects_vector ))

(defmethod realsense_ros_object::ObjectArray
  (:init
   (&key
    ((:objects_vector __objects_vector) (let (r) (dotimes (i 0) (push (instance realsense_ros_object::Object :init) r)) r))
    )
   (send-super :init)
   (setq _objects_vector __objects_vector)
   self)
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
    ;; realsense_ros_object/Object[] _objects_vector
    (apply #'+ (send-all _objects_vector :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; realsense_ros_object/Object[] _objects_vector
     (write-long (length _objects_vector) s)
     (dolist (elem _objects_vector)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; realsense_ros_object/Object[] _objects_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_vector (let (r) (dotimes (i n) (push (instance realsense_ros_object::Object :init) r)) r))
     (dolist (elem- _objects_vector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get realsense_ros_object::ObjectArray :md5sum-) "d0eaf0f4593b2bff3780b9347ff0665f")
(setf (get realsense_ros_object::ObjectArray :datatype-) "realsense_ros_object/ObjectArray")
(setf (get realsense_ros_object::ObjectArray :definition-)
      "Object[] objects_vector

================================================================================
MSG: realsense_ros_object/Object
int32 label
string object_name
float32 probability

")



(provide :realsense_ros_object/ObjectArray "d0eaf0f4593b2bff3780b9347ff0665f")


