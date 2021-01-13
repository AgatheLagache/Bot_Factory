; Auto-generated. Do not edit!


(cl:in-package poppy_msgs-srv)


;//! \htmlinclude SetIdleMotion-request.msg.html

(cl:defclass <SetIdleMotion-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetIdleMotion-request (<SetIdleMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIdleMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIdleMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<SetIdleMotion-request> is deprecated: use poppy_msgs-srv:SetIdleMotion-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SetIdleMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:command-val is deprecated.  Use poppy_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetIdleMotion-request>)))
    "Constants for message type '<SetIdleMotion-request>"
  '((:COMMAND_START . 1)
    (:COMMAND_STOP . 0)
    (:COMMAND_PAUSE . 2)
    (:COMMAND_RESUME . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetIdleMotion-request)))
    "Constants for message type 'SetIdleMotion-request"
  '((:COMMAND_START . 1)
    (:COMMAND_STOP . 0)
    (:COMMAND_PAUSE . 2)
    (:COMMAND_RESUME . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIdleMotion-request>) ostream)
  "Serializes a message object of type '<SetIdleMotion-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIdleMotion-request>) istream)
  "Deserializes a message object of type '<SetIdleMotion-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIdleMotion-request>)))
  "Returns string type for a service object of type '<SetIdleMotion-request>"
  "poppy_msgs/SetIdleMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIdleMotion-request)))
  "Returns string type for a service object of type 'SetIdleMotion-request"
  "poppy_msgs/SetIdleMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIdleMotion-request>)))
  "Returns md5sum for a message object of type '<SetIdleMotion-request>"
  "8be1c25e78be3492319574e465362b18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIdleMotion-request)))
  "Returns md5sum for a message object of type 'SetIdleMotion-request"
  "8be1c25e78be3492319574e465362b18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIdleMotion-request>)))
  "Returns full string definition for message of type '<SetIdleMotion-request>"
  (cl:format cl:nil "uint8 COMMAND_START = 1~%uint8 COMMAND_STOP = 0~%uint8 COMMAND_PAUSE = 2~%uint8 COMMAND_RESUME = 3~%~%uint8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIdleMotion-request)))
  "Returns full string definition for message of type 'SetIdleMotion-request"
  (cl:format cl:nil "uint8 COMMAND_START = 1~%uint8 COMMAND_STOP = 0~%uint8 COMMAND_PAUSE = 2~%uint8 COMMAND_RESUME = 3~%~%uint8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIdleMotion-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIdleMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIdleMotion-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SetIdleMotion-response.msg.html

(cl:defclass <SetIdleMotion-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetIdleMotion-response (<SetIdleMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIdleMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIdleMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<SetIdleMotion-response> is deprecated: use poppy_msgs-srv:SetIdleMotion-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIdleMotion-response>) ostream)
  "Serializes a message object of type '<SetIdleMotion-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIdleMotion-response>) istream)
  "Deserializes a message object of type '<SetIdleMotion-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIdleMotion-response>)))
  "Returns string type for a service object of type '<SetIdleMotion-response>"
  "poppy_msgs/SetIdleMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIdleMotion-response)))
  "Returns string type for a service object of type 'SetIdleMotion-response"
  "poppy_msgs/SetIdleMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIdleMotion-response>)))
  "Returns md5sum for a message object of type '<SetIdleMotion-response>"
  "8be1c25e78be3492319574e465362b18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIdleMotion-response)))
  "Returns md5sum for a message object of type 'SetIdleMotion-response"
  "8be1c25e78be3492319574e465362b18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIdleMotion-response>)))
  "Returns full string definition for message of type '<SetIdleMotion-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIdleMotion-response)))
  "Returns full string definition for message of type 'SetIdleMotion-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIdleMotion-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIdleMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIdleMotion-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIdleMotion)))
  'SetIdleMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIdleMotion)))
  'SetIdleMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIdleMotion)))
  "Returns string type for a service object of type '<SetIdleMotion>"
  "poppy_msgs/SetIdleMotion")