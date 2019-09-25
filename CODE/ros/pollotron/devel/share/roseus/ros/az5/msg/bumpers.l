;; Auto-generated. Do not edit!


(when (boundp 'az5::bumpers)
  (if (not (find-package "AZ5"))
    (make-package "AZ5"))
  (shadow 'bumpers (find-package "AZ5")))
(unless (find-package "AZ5::BUMPERS")
  (make-package "AZ5::BUMPERS"))

(in-package "ROS")
;;//! \htmlinclude bumpers.msg.html


(defclass az5::bumpers
  :super ros::object
  :slots (_LEFT _RIGHT _FRONT _BACK ))

(defmethod az5::bumpers
  (:init
   (&key
    ((:LEFT __LEFT) nil)
    ((:RIGHT __RIGHT) nil)
    ((:FRONT __FRONT) nil)
    ((:BACK __BACK) nil)
    )
   (send-super :init)
   (setq _LEFT __LEFT)
   (setq _RIGHT __RIGHT)
   (setq _FRONT __FRONT)
   (setq _BACK __BACK)
   self)
  (:LEFT
   (&optional __LEFT)
   (if __LEFT (setq _LEFT __LEFT)) _LEFT)
  (:RIGHT
   (&optional __RIGHT)
   (if __RIGHT (setq _RIGHT __RIGHT)) _RIGHT)
  (:FRONT
   (&optional __FRONT)
   (if __FRONT (setq _FRONT __FRONT)) _FRONT)
  (:BACK
   (&optional __BACK)
   (if __BACK (setq _BACK __BACK)) _BACK)
  (:serialization-length
   ()
   (+
    ;; bool _LEFT
    1
    ;; bool _RIGHT
    1
    ;; bool _FRONT
    1
    ;; bool _BACK
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _LEFT
       (if _LEFT (write-byte -1 s) (write-byte 0 s))
     ;; bool _RIGHT
       (if _RIGHT (write-byte -1 s) (write-byte 0 s))
     ;; bool _FRONT
       (if _FRONT (write-byte -1 s) (write-byte 0 s))
     ;; bool _BACK
       (if _BACK (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _LEFT
     (setq _LEFT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RIGHT
     (setq _RIGHT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _FRONT
     (setq _FRONT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _BACK
     (setq _BACK (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get az5::bumpers :md5sum-) "4b9e708bc1320c04ab698dfe0ba605f8")
(setf (get az5::bumpers :datatype-) "az5/bumpers")
(setf (get az5::bumpers :definition-)
      "bool LEFT
bool RIGHT
bool FRONT
bool BACK
")



(provide :az5/bumpers "4b9e708bc1320c04ab698dfe0ba605f8")


