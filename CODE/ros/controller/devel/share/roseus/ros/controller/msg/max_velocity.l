;; Auto-generated. Do not edit!


(when (boundp 'controller::max_velocity)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'max_velocity (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::MAX_VELOCITY")
  (make-package "CONTROLLER::MAX_VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude max_velocity.msg.html


(intern "*LENGTH*" (find-package "CONTROLLER::MAX_VELOCITY"))
(shadow '*LENGTH* (find-package "CONTROLLER::MAX_VELOCITY"))
(defconstant controller::max_velocity::*LENGTH* 16)
(defclass controller::max_velocity
  :super ros::object
  :slots (_data ))

(defmethod controller::max_velocity
  (:init
   (&key
    ((:data __data) (make-array 16 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32[16] _data
    (* 4    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[16] _data
     (dotimes (i 16)
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[16] _data
   (dotimes (i (length _data))
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get controller::max_velocity :md5sum-) "86cf59839b89372f0df8b1565cb79615")
(setf (get controller::max_velocity :datatype-) "controller/max_velocity")
(setf (get controller::max_velocity :definition-)
      "int32[16] data
int32 length = 16
")



(provide :controller/max_velocity "86cf59839b89372f0df8b1565cb79615")


