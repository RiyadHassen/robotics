;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::angles)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'angles (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::ANGLES")
  (make-package "ARM_GAZEBO::ANGLES"))

(in-package "ROS")
;;//! \htmlinclude angles.msg.html


(defclass arm_gazebo::angles
  :super ros::object
  :slots (_alpha _beta _gamma _theta ))

(defmethod arm_gazebo::angles
  (:init
   (&key
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:gamma __gamma) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _gamma (float __gamma))
   (setq _theta (float __theta))
   self)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _alpha
    4
    ;; float32 _beta
    4
    ;; float32 _gamma
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _beta
     (setq _beta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gamma
     (setq _gamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_gazebo::angles :md5sum-) "e721dce72ff14c1f85d2e08ba65b8f95")
(setf (get arm_gazebo::angles :datatype-) "arm_gazebo/angles")
(setf (get arm_gazebo::angles :definition-)
      "float32 alpha
float32 beta 
float32 gamma
float32 theta
")



(provide :arm_gazebo/angles "e721dce72ff14c1f85d2e08ba65b8f95")


