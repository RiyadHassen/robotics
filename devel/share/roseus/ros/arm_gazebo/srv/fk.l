;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::fk)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'fk (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::FK")
  (make-package "ARM_GAZEBO::FK"))
(unless (find-package "ARM_GAZEBO::FKREQUEST")
  (make-package "ARM_GAZEBO::FKREQUEST"))
(unless (find-package "ARM_GAZEBO::FKRESPONSE")
  (make-package "ARM_GAZEBO::FKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::fkRequest
  :super ros::object
  :slots ())

(defmethod arm_gazebo::fkRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arm_gazebo::fkResponse
  :super ros::object
  :slots ())

(defmethod arm_gazebo::fkResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arm_gazebo::fk
  :super ros::object
  :slots ())

(setf (get arm_gazebo::fk :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arm_gazebo::fk :datatype-) "arm_gazebo/fk")
(setf (get arm_gazebo::fk :request) arm_gazebo::fkRequest)
(setf (get arm_gazebo::fk :response) arm_gazebo::fkResponse)

(defmethod arm_gazebo::fkRequest
  (:response () (instance arm_gazebo::fkResponse :init)))

(setf (get arm_gazebo::fkRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arm_gazebo::fkRequest :datatype-) "arm_gazebo/fkRequest")
(setf (get arm_gazebo::fkRequest :definition-)
      "
---
")

(setf (get arm_gazebo::fkResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arm_gazebo::fkResponse :datatype-) "arm_gazebo/fkResponse")
(setf (get arm_gazebo::fkResponse :definition-)
      "
---
")



(provide :arm_gazebo/fk "d41d8cd98f00b204e9800998ecf8427e")


