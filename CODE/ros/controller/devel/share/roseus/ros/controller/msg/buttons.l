;; Auto-generated. Do not edit!


(when (boundp 'controller::buttons)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'buttons (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::BUTTONS")
  (make-package "CONTROLLER::BUTTONS"))

(in-package "ROS")
;;//! \htmlinclude buttons.msg.html


(defclass controller::buttons
  :super ros::object
  :slots (_TRIANGLE _CIRCLE _SQUARE _CROSS _UP _DOWN _LEFT _RIGHT _R1 _R2 _L1 _L2 ))

(defmethod controller::buttons
  (:init
   (&key
    ((:TRIANGLE __TRIANGLE) nil)
    ((:CIRCLE __CIRCLE) nil)
    ((:SQUARE __SQUARE) nil)
    ((:CROSS __CROSS) nil)
    ((:UP __UP) nil)
    ((:DOWN __DOWN) nil)
    ((:LEFT __LEFT) nil)
    ((:RIGHT __RIGHT) nil)
    ((:R1 __R1) nil)
    ((:R2 __R2) nil)
    ((:L1 __L1) nil)
    ((:L2 __L2) nil)
    )
   (send-super :init)
   (setq _TRIANGLE __TRIANGLE)
   (setq _CIRCLE __CIRCLE)
   (setq _SQUARE __SQUARE)
   (setq _CROSS __CROSS)
   (setq _UP __UP)
   (setq _DOWN __DOWN)
   (setq _LEFT __LEFT)
   (setq _RIGHT __RIGHT)
   (setq _R1 __R1)
   (setq _R2 __R2)
   (setq _L1 __L1)
   (setq _L2 __L2)
   self)
  (:TRIANGLE
   (&optional __TRIANGLE)
   (if __TRIANGLE (setq _TRIANGLE __TRIANGLE)) _TRIANGLE)
  (:CIRCLE
   (&optional __CIRCLE)
   (if __CIRCLE (setq _CIRCLE __CIRCLE)) _CIRCLE)
  (:SQUARE
   (&optional __SQUARE)
   (if __SQUARE (setq _SQUARE __SQUARE)) _SQUARE)
  (:CROSS
   (&optional __CROSS)
   (if __CROSS (setq _CROSS __CROSS)) _CROSS)
  (:UP
   (&optional __UP)
   (if __UP (setq _UP __UP)) _UP)
  (:DOWN
   (&optional __DOWN)
   (if __DOWN (setq _DOWN __DOWN)) _DOWN)
  (:LEFT
   (&optional __LEFT)
   (if __LEFT (setq _LEFT __LEFT)) _LEFT)
  (:RIGHT
   (&optional __RIGHT)
   (if __RIGHT (setq _RIGHT __RIGHT)) _RIGHT)
  (:R1
   (&optional __R1)
   (if __R1 (setq _R1 __R1)) _R1)
  (:R2
   (&optional __R2)
   (if __R2 (setq _R2 __R2)) _R2)
  (:L1
   (&optional __L1)
   (if __L1 (setq _L1 __L1)) _L1)
  (:L2
   (&optional __L2)
   (if __L2 (setq _L2 __L2)) _L2)
  (:serialization-length
   ()
   (+
    ;; bool _TRIANGLE
    1
    ;; bool _CIRCLE
    1
    ;; bool _SQUARE
    1
    ;; bool _CROSS
    1
    ;; bool _UP
    1
    ;; bool _DOWN
    1
    ;; bool _LEFT
    1
    ;; bool _RIGHT
    1
    ;; bool _R1
    1
    ;; bool _R2
    1
    ;; bool _L1
    1
    ;; bool _L2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _TRIANGLE
       (if _TRIANGLE (write-byte -1 s) (write-byte 0 s))
     ;; bool _CIRCLE
       (if _CIRCLE (write-byte -1 s) (write-byte 0 s))
     ;; bool _SQUARE
       (if _SQUARE (write-byte -1 s) (write-byte 0 s))
     ;; bool _CROSS
       (if _CROSS (write-byte -1 s) (write-byte 0 s))
     ;; bool _UP
       (if _UP (write-byte -1 s) (write-byte 0 s))
     ;; bool _DOWN
       (if _DOWN (write-byte -1 s) (write-byte 0 s))
     ;; bool _LEFT
       (if _LEFT (write-byte -1 s) (write-byte 0 s))
     ;; bool _RIGHT
       (if _RIGHT (write-byte -1 s) (write-byte 0 s))
     ;; bool _R1
       (if _R1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _R2
       (if _R2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _L1
       (if _L1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _L2
       (if _L2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _TRIANGLE
     (setq _TRIANGLE (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CIRCLE
     (setq _CIRCLE (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SQUARE
     (setq _SQUARE (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CROSS
     (setq _CROSS (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _UP
     (setq _UP (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _DOWN
     (setq _DOWN (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LEFT
     (setq _LEFT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RIGHT
     (setq _RIGHT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R1
     (setq _R1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _R2
     (setq _R2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _L1
     (setq _L1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _L2
     (setq _L2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get controller::buttons :md5sum-) "7013f4c34338e575015a24a638b00725")
(setf (get controller::buttons :datatype-) "controller/buttons")
(setf (get controller::buttons :definition-)
      "bool TRIANGLE
bool CIRCLE
bool SQUARE
bool CROSS

bool UP
bool DOWN
bool LEFT
bool RIGHT


bool R1
bool R2
bool L1
bool L2
")



(provide :controller/buttons "7013f4c34338e575015a24a638b00725")


