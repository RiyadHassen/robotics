
(cl:in-package :asdf)

(defsystem "transformation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Input" :depends-on ("_package_Input"))
    (:file "_package_Input" :depends-on ("_package"))
    (:file "Output" :depends-on ("_package_Output"))
    (:file "_package_Output" :depends-on ("_package"))
  ))