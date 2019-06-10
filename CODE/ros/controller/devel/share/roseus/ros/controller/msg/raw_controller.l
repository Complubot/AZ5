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
    ;; int8 _RX
    1
    ;; int8 _RY
    1
    ;; int8 _LX
    1
    ;; int8 _LY
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _RX
       (write-byte _RX s)
     ;; int8 _RY
       (write-byte _RY s)
     ;; int8 _LX
       (write-byte _LX s)
     ;; int8 _LY
       (write-byte _LY s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _RX
     (setq _RX (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RX 127) (setq _RX (- _RX 256)))
   ;; int8 _RY
     (setq _RY (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RY 127) (setq _RY (- _RY 256)))
   ;; int8 _LX
     (setq _LX (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _LX 127) (setq _LX (- _LX 256)))
   ;; int8 _LY
     (setq _LY (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _LY 127) (setq _LY (- _LY 256)))
   ;;
   self)
  )

(setf (get controller::raw_controller :md5sum-) "261f1b7f011b5fc47b397e357aa3b674")
(setf (get controller::raw_controller :datatype-) "controller/raw_controller")
(setf (get controller::raw_controller :definition-)
      "int8 RX
int8 RY
int8 LX
int8 LY
")



(provide :controller/raw_controller "261f1b7f011b5fc47b397e357aa3b674")


