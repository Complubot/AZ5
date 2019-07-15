;; Auto-generated. Do not edit!


(when (boundp 'learning_tf::ultrasounds)
  (if (not (find-package "LEARNING_TF"))
    (make-package "LEARNING_TF"))
  (shadow 'ultrasounds (find-package "LEARNING_TF")))
(unless (find-package "LEARNING_TF::ULTRASOUNDS")
  (make-package "LEARNING_TF::ULTRASOUNDS"))

(in-package "ROS")
;;//! \htmlinclude ultrasounds.msg.html


(intern "*LENGTH*" (find-package "LEARNING_TF::ULTRASOUNDS"))
(shadow '*LENGTH* (find-package "LEARNING_TF::ULTRASOUNDS"))
(defconstant learning_tf::ultrasounds::*LENGTH* 16)
(defclass learning_tf::ultrasounds
  :super ros::object
  :slots (_measurements ))

(defmethod learning_tf::ultrasounds
  (:init
   (&key
    ((:measurements __measurements) (make-array 16 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _measurements __measurements)
   self)
  (:measurements
   (&optional __measurements)
   (if __measurements (setq _measurements __measurements)) _measurements)
  (:serialization-length
   ()
   (+
    ;; int32[16] _measurements
    (* 4    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[16] _measurements
     (dotimes (i 16)
       (write-long (elt _measurements i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[16] _measurements
   (dotimes (i (length _measurements))
     (setf (elt _measurements i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get learning_tf::ultrasounds :md5sum-) "09e96d0ffc1d31ca0f72f6408aaa1e7a")
(setf (get learning_tf::ultrasounds :datatype-) "learning_tf/ultrasounds")
(setf (get learning_tf::ultrasounds :definition-)
      "int32[16] measurements
int32 length = 16
")



(provide :learning_tf/ultrasounds "09e96d0ffc1d31ca0f72f6408aaa1e7a")


