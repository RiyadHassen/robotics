;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::pose)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'pose (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::POSE")
  (make-package "ARM_GAZEBO::POSE"))

(in-package "ROS")
;;//! \htmlinclude pose.msg.html


(defclass arm_gazebo::pose
  :super ros::object
  :slots (_x _y _z _option ))

(defmethod arm_gazebo::pose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:option __option) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _option (round __option))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:option
   (&optional __option)
   (if __option (setq _option __option)) _option)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; int64 _option
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _option
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _option (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _option) (= (length (_option . bv)) 2)) ;; bignum
              (write-long (ash (elt (_option . bv) 0) 0) s)
              (write-long (ash (elt (_option . bv) 1) -1) s))
             ((and (class _option) (= (length (_option . bv)) 1)) ;; big1
              (write-long (elt (_option . bv) 0) s)
              (write-long (if (>= _option 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _option s)(write-long (if (>= _option 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _option
#+(or :alpha :irix6 :x86_64)
      (setf _option (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _option (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get arm_gazebo::pose :md5sum-) "90439c567650737834064a6bf6be0f59")
(setf (get arm_gazebo::pose :datatype-) "arm_gazebo/pose")
(setf (get arm_gazebo::pose :definition-)
      "float64 x
float64 y
float64 z
int64 option
")



(provide :arm_gazebo/pose "90439c567650737834064a6bf6be0f59")


