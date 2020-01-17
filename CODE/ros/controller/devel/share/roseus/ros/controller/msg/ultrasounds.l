;; Auto-generated. Do not edit!


(when (boundp 'controller::ultrasounds)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'ultrasounds (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::ULTRASOUNDS")
  (make-package "CONTROLLER::ULTRASOUNDS"))

(in-package "ROS")
;;//! \htmlinclude ultrasounds.msg.html


(intern "*LENGTH*" (find-package "CONTROLLER::ULTRASOUNDS"))
(shadow '*LENGTH* (find-package "CONTROLLER::ULTRASOUNDS"))
(defconstant controller::ultrasounds::*LENGTH* 16)
(defclass controller::ultrasounds
  :super ros::object
  :slots (_measurements ))

(defmethod controller::ultrasounds
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

(setf (get controller::ultrasounds :md5sum-) "09e96d0ffc1d31ca0f72f6408aaa1e7a")
(setf (get controller::ultrasounds :datatype-) "controller/ultrasounds")
(setf (get controller::ultrasounds :definition-)
      "int32[16] measurements
int32 length = 16
")



(provide :controller/ultrasounds "09e96d0ffc1d31ca0f72f6408aaa1e7a")


