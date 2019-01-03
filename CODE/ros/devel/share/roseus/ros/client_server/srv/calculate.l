;; Auto-generated. Do not edit!


(when (boundp 'client_server::calculate)
  (if (not (find-package "CLIENT_SERVER"))
    (make-package "CLIENT_SERVER"))
  (shadow 'calculate (find-package "CLIENT_SERVER")))
(unless (find-package "CLIENT_SERVER::CALCULATE")
  (make-package "CLIENT_SERVER::CALCULATE"))
(unless (find-package "CLIENT_SERVER::CALCULATEREQUEST")
  (make-package "CLIENT_SERVER::CALCULATEREQUEST"))
(unless (find-package "CLIENT_SERVER::CALCULATERESPONSE")
  (make-package "CLIENT_SERVER::CALCULATERESPONSE"))

(in-package "ROS")





(defclass client_server::calculateRequest
  :super ros::object
  :slots (_operation _value1 _value2 ))

(defmethod client_server::calculateRequest
  (:init
   (&key
    ((:operation __operation) "")
    ((:value1 __value1) 0)
    ((:value2 __value2) 0)
    )
   (send-super :init)
   (setq _operation (string __operation))
   (setq _value1 (round __value1))
   (setq _value2 (round __value2))
   self)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:serialization-length
   ()
   (+
    ;; string _operation
    4 (length _operation)
    ;; int64 _value1
    8
    ;; int64 _value2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _operation
       (write-long (length _operation) s) (princ _operation s)
     ;; int64 _value1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value1) (= (length (_value1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value1 . bv) 0) 0) s)
              (write-long (ash (elt (_value1 . bv) 1) -1) s))
             ((and (class _value1) (= (length (_value1 . bv)) 1)) ;; big1
              (write-long (elt (_value1 . bv) 0) s)
              (write-long (if (>= _value1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value1 s)(write-long (if (>= _value1 0) 0 #xffffffff) s)))
     ;; int64 _value2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value2) (= (length (_value2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value2 . bv) 0) 0) s)
              (write-long (ash (elt (_value2 . bv) 1) -1) s))
             ((and (class _value2) (= (length (_value2 . bv)) 1)) ;; big1
              (write-long (elt (_value2 . bv) 0) s)
              (write-long (if (>= _value2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value2 s)(write-long (if (>= _value2 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _operation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _value1
#+(or :alpha :irix6 :x86_64)
      (setf _value1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _value2
#+(or :alpha :irix6 :x86_64)
      (setf _value2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass client_server::calculateResponse
  :super ros::object
  :slots (_result ))

(defmethod client_server::calculateResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int64 _result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _result
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _result (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _result) (= (length (_result . bv)) 2)) ;; bignum
              (write-long (ash (elt (_result . bv) 0) 0) s)
              (write-long (ash (elt (_result . bv) 1) -1) s))
             ((and (class _result) (= (length (_result . bv)) 1)) ;; big1
              (write-long (elt (_result . bv) 0) s)
              (write-long (if (>= _result 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _result s)(write-long (if (>= _result 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _result
#+(or :alpha :irix6 :x86_64)
      (setf _result (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _result (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass client_server::calculate
  :super ros::object
  :slots ())

(setf (get client_server::calculate :md5sum-) "d64ae8c16bfa9c85587ea117ae2364cb")
(setf (get client_server::calculate :datatype-) "client_server/calculate")
(setf (get client_server::calculate :request) client_server::calculateRequest)
(setf (get client_server::calculate :response) client_server::calculateResponse)

(defmethod client_server::calculateRequest
  (:response () (instance client_server::calculateResponse :init)))

(setf (get client_server::calculateRequest :md5sum-) "d64ae8c16bfa9c85587ea117ae2364cb")
(setf (get client_server::calculateRequest :datatype-) "client_server/calculateRequest")
(setf (get client_server::calculateRequest :definition-)
      "string operation
int64 value1
int64 value2
---
int64 result
")

(setf (get client_server::calculateResponse :md5sum-) "d64ae8c16bfa9c85587ea117ae2364cb")
(setf (get client_server::calculateResponse :datatype-) "client_server/calculateResponse")
(setf (get client_server::calculateResponse :definition-)
      "string operation
int64 value1
int64 value2
---
int64 result
")



(provide :client_server/calculate "d64ae8c16bfa9c85587ea117ae2364cb")


