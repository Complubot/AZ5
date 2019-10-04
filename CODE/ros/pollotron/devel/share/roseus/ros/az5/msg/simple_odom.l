;; Auto-generated. Do not edit!


(when (boundp 'az5::simple_odom)
  (if (not (find-package "AZ5"))
    (make-package "AZ5"))
  (shadow 'simple_odom (find-package "AZ5")))
(unless (find-package "AZ5::SIMPLE_ODOM")
  (make-package "AZ5::SIMPLE_ODOM"))

(in-package "ROS")
;;//! \htmlinclude simple_odom.msg.html


(defclass az5::simple_odom
  :super ros::object
  :slots (_x_pos _y_pos _z_pos _x_vel _y_vel _z_vel ))

(defmethod az5::simple_odom
  (:init
   (&key
    ((:x_pos __x_pos) 0.0)
    ((:y_pos __y_pos) 0.0)
    ((:z_pos __z_pos) 0.0)
    ((:x_vel __x_vel) 0.0)
    ((:y_vel __y_vel) 0.0)
    ((:z_vel __z_vel) 0.0)
    )
   (send-super :init)
   (setq _x_pos (float __x_pos))
   (setq _y_pos (float __y_pos))
   (setq _z_pos (float __z_pos))
   (setq _x_vel (float __x_vel))
   (setq _y_vel (float __y_vel))
   (setq _z_vel (float __z_vel))
   self)
  (:x_pos
   (&optional __x_pos)
   (if __x_pos (setq _x_pos __x_pos)) _x_pos)
  (:y_pos
   (&optional __y_pos)
   (if __y_pos (setq _y_pos __y_pos)) _y_pos)
  (:z_pos
   (&optional __z_pos)
   (if __z_pos (setq _z_pos __z_pos)) _z_pos)
  (:x_vel
   (&optional __x_vel)
   (if __x_vel (setq _x_vel __x_vel)) _x_vel)
  (:y_vel
   (&optional __y_vel)
   (if __y_vel (setq _y_vel __y_vel)) _y_vel)
  (:z_vel
   (&optional __z_vel)
   (if __z_vel (setq _z_vel __z_vel)) _z_vel)
  (:serialization-length
   ()
   (+
    ;; float64 _x_pos
    8
    ;; float64 _y_pos
    8
    ;; float64 _z_pos
    8
    ;; float64 _x_vel
    8
    ;; float64 _y_vel
    8
    ;; float64 _z_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_pos
       (sys::poke _x_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_pos
       (sys::poke _y_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_pos
       (sys::poke _z_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_vel
       (sys::poke _x_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_vel
       (sys::poke _y_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_vel
       (sys::poke _z_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_pos
     (setq _x_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_pos
     (setq _y_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_pos
     (setq _z_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_vel
     (setq _x_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_vel
     (setq _y_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_vel
     (setq _z_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get az5::simple_odom :md5sum-) "22ab75215cf03e4c6396d04a16d3439c")
(setf (get az5::simple_odom :datatype-) "az5/simple_odom")
(setf (get az5::simple_odom :definition-)
      "
float64 x_pos
float64 y_pos
float64 z_pos
float64 x_vel
float64 y_vel
float64 z_vel

")



(provide :az5/simple_odom "22ab75215cf03e4c6396d04a16d3439c")


