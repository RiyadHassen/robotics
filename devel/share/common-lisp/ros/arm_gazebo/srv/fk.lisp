; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-srv)


;//! \htmlinclude fk-request.msg.html

(cl:defclass <fk-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass fk-request (<fk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<fk-request> is deprecated: use arm_gazebo-srv:fk-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fk-request>) ostream)
  "Serializes a message object of type '<fk-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fk-request>) istream)
  "Deserializes a message object of type '<fk-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fk-request>)))
  "Returns string type for a service object of type '<fk-request>"
  "arm_gazebo/fkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk-request)))
  "Returns string type for a service object of type 'fk-request"
  "arm_gazebo/fkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fk-request>)))
  "Returns md5sum for a message object of type '<fk-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fk-request)))
  "Returns md5sum for a message object of type 'fk-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fk-request>)))
  "Returns full string definition for message of type '<fk-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fk-request)))
  "Returns full string definition for message of type 'fk-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fk-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fk-request
))
;//! \htmlinclude fk-response.msg.html

(cl:defclass <fk-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass fk-response (<fk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<fk-response> is deprecated: use arm_gazebo-srv:fk-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fk-response>) ostream)
  "Serializes a message object of type '<fk-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fk-response>) istream)
  "Deserializes a message object of type '<fk-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fk-response>)))
  "Returns string type for a service object of type '<fk-response>"
  "arm_gazebo/fkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk-response)))
  "Returns string type for a service object of type 'fk-response"
  "arm_gazebo/fkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fk-response>)))
  "Returns md5sum for a message object of type '<fk-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fk-response)))
  "Returns md5sum for a message object of type 'fk-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fk-response>)))
  "Returns full string definition for message of type '<fk-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fk-response)))
  "Returns full string definition for message of type 'fk-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fk-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fk-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fk)))
  'fk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fk)))
  'fk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk)))
  "Returns string type for a service object of type '<fk>"
  "arm_gazebo/fk")