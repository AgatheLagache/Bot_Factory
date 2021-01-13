; Auto-generated. Do not edit!


(cl:in-package poppy_msgs-srv)


;//! \htmlinclude SetCompliant-request.msg.html

(cl:defclass <SetCompliant-request> (roslisp-msg-protocol:ros-message)
  ((compliant
    :reader compliant
    :initarg :compliant
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetCompliant-request (<SetCompliant-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCompliant-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCompliant-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<SetCompliant-request> is deprecated: use poppy_msgs-srv:SetCompliant-request instead.")))

(cl:ensure-generic-function 'compliant-val :lambda-list '(m))
(cl:defmethod compliant-val ((m <SetCompliant-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:compliant-val is deprecated.  Use poppy_msgs-srv:compliant instead.")
  (compliant m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCompliant-request>) ostream)
  "Serializes a message object of type '<SetCompliant-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'compliant) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCompliant-request>) istream)
  "Deserializes a message object of type '<SetCompliant-request>"
    (cl:setf (cl:slot-value msg 'compliant) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCompliant-request>)))
  "Returns string type for a service object of type '<SetCompliant-request>"
  "poppy_msgs/SetCompliantRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCompliant-request)))
  "Returns string type for a service object of type 'SetCompliant-request"
  "poppy_msgs/SetCompliantRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCompliant-request>)))
  "Returns md5sum for a message object of type '<SetCompliant-request>"
  "69dee17d63f05f40110dce6a193709a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCompliant-request)))
  "Returns md5sum for a message object of type 'SetCompliant-request"
  "69dee17d63f05f40110dce6a193709a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCompliant-request>)))
  "Returns full string definition for message of type '<SetCompliant-request>"
  (cl:format cl:nil "bool compliant~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCompliant-request)))
  "Returns full string definition for message of type 'SetCompliant-request"
  (cl:format cl:nil "bool compliant~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCompliant-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCompliant-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCompliant-request
    (cl:cons ':compliant (compliant msg))
))
;//! \htmlinclude SetCompliant-response.msg.html

(cl:defclass <SetCompliant-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetCompliant-response (<SetCompliant-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCompliant-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCompliant-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<SetCompliant-response> is deprecated: use poppy_msgs-srv:SetCompliant-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCompliant-response>) ostream)
  "Serializes a message object of type '<SetCompliant-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCompliant-response>) istream)
  "Deserializes a message object of type '<SetCompliant-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCompliant-response>)))
  "Returns string type for a service object of type '<SetCompliant-response>"
  "poppy_msgs/SetCompliantResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCompliant-response)))
  "Returns string type for a service object of type 'SetCompliant-response"
  "poppy_msgs/SetCompliantResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCompliant-response>)))
  "Returns md5sum for a message object of type '<SetCompliant-response>"
  "69dee17d63f05f40110dce6a193709a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCompliant-response)))
  "Returns md5sum for a message object of type 'SetCompliant-response"
  "69dee17d63f05f40110dce6a193709a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCompliant-response>)))
  "Returns full string definition for message of type '<SetCompliant-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCompliant-response)))
  "Returns full string definition for message of type 'SetCompliant-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCompliant-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCompliant-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCompliant-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCompliant)))
  'SetCompliant-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCompliant)))
  'SetCompliant-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCompliant)))
  "Returns string type for a service object of type '<SetCompliant>"
  "poppy_msgs/SetCompliant")