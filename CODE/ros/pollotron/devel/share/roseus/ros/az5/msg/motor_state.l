;; Auto-generated. Do not edit!


(when (boundp 'az5::motor_state)
  (if (not (find-package "AZ5"))
    (make-package "AZ5"))
  (shadow 'motor_state (find-package "AZ5")))
(unless (find-package "AZ5::MOTOR_STATE")
  (make-package "AZ5::MOTOR_STATE"))

(in-package "ROS")
;;//! \htmlinclude motor_state.msg.html


(defclass az5::motor_state
  :super ros::object
  :slots (_M1 _M2 _M3 _M4 ))

(defmethod az5::motor_state
  (:init
   (&key
    ((:M1 __M1) nil)
    ((:M2 __M2) nil)
    ((:M3 __M3) nil)
    ((:M4 __M4) nil)
    )
   (send-super :init)
   (setq _M1 __M1)
   (setq _M2 __M2)
   (setq _M3 __M3)
   (setq _M4 __M4)
   self)
  (:M1
   (&optional __M1)
   (if __M1 (setq _M1 __M1)) _M1)
  (:M2
   (&optional __M2)
   (if __M2 (setq _M2 __M2)) _M2)
  (:M3
   (&optional __M3)
   (if __M3 (setq _M3 __M3)) _M3)
  (:M4
   (&optional __M4)
   (if __M4 (setq _M4 __M4)) _M4)
  (:serialization-length
   ()
   (+
    ;; bool _M1
    1
    ;; bool _M2
    1
    ;; bool _M3
    1
    ;; bool _M4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _M1
       (if _M1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _M2
       (if _M2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _M3
       (if _M3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _M4
       (if _M4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _M1
     (setq _M1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _M2
     (setq _M2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _M3
     (setq _M3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _M4
     (setq _M4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get az5::motor_state :md5sum-) "a7108cdd472cdbecdeda4bfb217c695c")
(setf (get az5::motor_state :datatype-) "az5/motor_state")
(setf (get az5::motor_state :definition-)
      "bool M1
bool M2
bool M3
bool M4
")



(provide :az5/motor_state "a7108cdd472cdbecdeda4bfb217c695c")


