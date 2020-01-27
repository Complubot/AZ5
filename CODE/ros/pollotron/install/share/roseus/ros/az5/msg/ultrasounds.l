;; Auto-generated. Do not edit!


(when (boundp 'az5::ultrasounds)
  (if (not (find-package "AZ5"))
    (make-package "AZ5"))
  (shadow 'ultrasounds (find-package "AZ5")))
(unless (find-package "AZ5::ULTRASOUNDS")
  (make-package "AZ5::ULTRASOUNDS"))

(in-package "ROS")
;;//! \htmlinclude ultrasounds.msg.html


(intern "*LENGTH*" (find-package "AZ5::ULTRASOUNDS"))
(shadow '*LENGTH* (find-package "AZ5::ULTRASOUNDS"))
(defconstant az5::ultrasounds::*LENGTH* 16)
(defclass az5::ultrasounds
  :super ros::object
  :slots (_us _value ))

(defmethod az5::ultrasounds
  (:init
   (&key
    ((:us __us) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _us (round __us))
   (setq _value (round __value))
   self)
  (:us
   (&optional __us)
   (if __us (setq _us __us)) _us)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _us
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _us
       (write-long _us s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _us
     (setq _us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get az5::ultrasounds :md5sum-) "1e30bc51109991e924faa9021922381b")
(setf (get az5::ultrasounds :datatype-) "az5/ultrasounds")
(setf (get az5::ultrasounds :definition-)
      "int32 us
int32 value
int32 length = 16
")



(provide :az5/ultrasounds "1e30bc51109991e924faa9021922381b")


