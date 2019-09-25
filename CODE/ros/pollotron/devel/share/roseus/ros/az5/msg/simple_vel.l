;; Auto-generated. Do not edit!


(when (boundp 'az5::simple_vel)
  (if (not (find-package "AZ5"))
    (make-package "AZ5"))
  (shadow 'simple_vel (find-package "AZ5")))
(unless (find-package "AZ5::SIMPLE_VEL")
  (make-package "AZ5::SIMPLE_VEL"))

(in-package "ROS")
;;//! \htmlinclude simple_vel.msg.html


(defclass az5::simple_vel
  :super ros::object
  :slots (_x _y _theta ))

(defmethod az5::simple_vel
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:theta __theta) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _theta (round __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _theta
       (write-long _theta s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _theta
     (setq _theta (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get az5::simple_vel :md5sum-) "2bff1127cd10ca02349c9c72c72be56e")
(setf (get az5::simple_vel :datatype-) "az5/simple_vel")
(setf (get az5::simple_vel :definition-)
      "int32 x
int32 y
int32 theta
")



(provide :az5/simple_vel "2bff1127cd10ca02349c9c72c72be56e")


