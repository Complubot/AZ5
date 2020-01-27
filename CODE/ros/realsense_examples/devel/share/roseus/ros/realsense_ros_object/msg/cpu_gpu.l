;; Auto-generated. Do not edit!


(when (boundp 'realsense_ros_object::cpu_gpu)
  (if (not (find-package "REALSENSE_ROS_OBJECT"))
    (make-package "REALSENSE_ROS_OBJECT"))
  (shadow 'cpu_gpu (find-package "REALSENSE_ROS_OBJECT")))
(unless (find-package "REALSENSE_ROS_OBJECT::CPU_GPU")
  (make-package "REALSENSE_ROS_OBJECT::CPU_GPU"))

(in-package "ROS")
;;//! \htmlinclude cpu_gpu.msg.html


(defclass realsense_ros_object::cpu_gpu
  :super ros::object
  :slots (_CPU_GPU ))

(defmethod realsense_ros_object::cpu_gpu
  (:init
   (&key
    ((:CPU_GPU __CPU_GPU) "")
    )
   (send-super :init)
   (setq _CPU_GPU (string __CPU_GPU))
   self)
  (:CPU_GPU
   (&optional __CPU_GPU)
   (if __CPU_GPU (setq _CPU_GPU __CPU_GPU)) _CPU_GPU)
  (:serialization-length
   ()
   (+
    ;; string _CPU_GPU
    4 (length _CPU_GPU)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _CPU_GPU
       (write-long (length _CPU_GPU) s) (princ _CPU_GPU s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _CPU_GPU
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CPU_GPU (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get realsense_ros_object::cpu_gpu :md5sum-) "61995a7e6325b9685a2e0414cf8b8822")
(setf (get realsense_ros_object::cpu_gpu :datatype-) "realsense_ros_object/cpu_gpu")
(setf (get realsense_ros_object::cpu_gpu :definition-)
      "string CPU_GPU

")



(provide :realsense_ros_object/cpu_gpu "61995a7e6325b9685a2e0414cf8b8822")


