;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::Object)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'Object (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::OBJECT")
  (make-package "REALSENSE_ROS_OBJECT::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html


(defclass realsense_ros_object::Object
  :super ros::object
  :slots (_label _object_name _probability ))

(defmethod realsense_ros_object::Object
  (:init
   (&key
    ((:label __label) 0)
    ((:object_name __object_name) "")
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _object_name (string __object_name))
   (setq _probability (float __probability))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; int32 _label
    4
    ;; string _object_name
    4 (length _object_name)
    ;; float32 _probability
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _label
       (write-long _label s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get realsense_ros_object::Object :md5sum-) "ec4d2c0f7ede0d9835355adac9d9a4e1")
(setf (get realsense_ros_object::Object :datatype-) "realsense_ros_object/Object")
(setf (get realsense_ros_object::Object :definition-)
      "int32 label
string object_name
float32 probability

")



(provide :realsense_ros_object/Object "ec4d2c0f7ede0d9835355adac9d9a4e1")


