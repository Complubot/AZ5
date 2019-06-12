;; Auto-generated. Do not edit!


(when (boundp 'controller::raw_controller)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'raw_controller (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::RAW_CONTROLLER")
  (make-package "CONTROLLER::RAW_CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude raw_controller.msg.html


(defclass controller::raw_controller
  :super ros::object
  :slots (_RX _RY _LX _LY ))

(defmethod controller::raw_controller
  (:init
   (&key
    ((:RX __RX) 0)
    ((:RY __RY) 0)
    ((:LX __LX) 0)
    ((:LY __LY) 0)
    )
   (send-super :init)
   (setq _RX (round __RX))
   (setq _RY (round __RY))
   (setq _LX (round __LX))
   (setq _LY (round __LY))
   self)
  (:RX
   (&optional __RX)
   (if __RX (setq _RX __RX)) _RX)
  (:RY
   (&optional __RY)
   (if __RY (setq _RY __RY)) _RY)
  (:LX
   (&optional __LX)
   (if __LX (setq _LX __LX)) _LX)
  (:LY
   (&optional __LY)
   (if __LY (setq _LY __LY)) _LY)
  (:serialization-length
   ()
   (+
    ;; int32 _RX
    4
    ;; int32 _RY
    4
    ;; int32 _LX
    4
    ;; int32 _LY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _RX
       (write-long _RX s)
     ;; int32 _RY
       (write-long _RY s)
     ;; int32 _LX
       (write-long _LX s)
     ;; int32 _LY
       (write-long _LY s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _RX
     (setq _RX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _RY
     (setq _RY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LX
     (setq _LX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LY
     (setq _LY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get controller::raw_controller :md5sum-) "28b3e8ea28833e842fbdd2e937cb7542")
(setf (get controller::raw_controller :datatype-) "controller/raw_controller")
(setf (get controller::raw_controller :definition-)
      "int32 RX
int32 RY
int32 LX
int32 LY
")



(provide :controller/raw_controller "28b3e8ea28833e842fbdd2e937cb7542")


