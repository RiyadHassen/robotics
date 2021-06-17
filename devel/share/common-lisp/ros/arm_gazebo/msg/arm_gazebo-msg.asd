
(cl:in-package :asdf)

(defsystem "arm_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pose" :depends-on ("_package_pose"))
    (:file "_package_pose" :depends-on ("_package"))
  ))