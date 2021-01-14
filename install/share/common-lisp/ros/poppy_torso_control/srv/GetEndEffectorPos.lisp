; Auto-generated. Do not edit!


(cl:in-package poppy_torso_control-srv)


;//! \htmlinclude GetEndEffectorPos-request.msg.html

(cl:defclass <GetEndEffectorPos-request> (roslisp-msg-protocol:ros-message)
  ((group
    :reader group
    :initarg :group
    :type cl:string
    :initform ""))
)

(cl:defclass GetEndEffectorPos-request (<GetEndEffectorPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<GetEndEffectorPos-request> is deprecated: use poppy_torso_control-srv:GetEndEffectorPos-request instead.")))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <GetEndEffectorPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:group-val is deprecated.  Use poppy_torso_control-srv:group instead.")
  (group m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorPos-request>) ostream)
  "Serializes a message object of type '<GetEndEffectorPos-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorPos-request>) istream)
  "Deserializes a message object of type '<GetEndEffectorPos-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorPos-request>)))
  "Returns string type for a service object of type '<GetEndEffectorPos-request>"
  "poppy_torso_control/GetEndEffectorPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorPos-request)))
  "Returns string type for a service object of type 'GetEndEffectorPos-request"
  "poppy_torso_control/GetEndEffectorPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorPos-request>)))
  "Returns md5sum for a message object of type '<GetEndEffectorPos-request>"
  "d8748f63ec08641b4cee5181223ababf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorPos-request)))
  "Returns md5sum for a message object of type 'GetEndEffectorPos-request"
  "d8748f63ec08641b4cee5181223ababf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorPos-request>)))
  "Returns full string definition for message of type '<GetEndEffectorPos-request>"
  (cl:format cl:nil "string group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorPos-request)))
  "Returns full string definition for message of type 'GetEndEffectorPos-request"
  (cl:format cl:nil "string group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorPos-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorPos-request
    (cl:cons ':group (group msg))
))
;//! \htmlinclude GetEndEffectorPos-response.msg.html

(cl:defclass <GetEndEffectorPos-response> (roslisp-msg-protocol:ros-message)
  ((xyz
    :reader xyz
    :initarg :xyz
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetEndEffectorPos-response (<GetEndEffectorPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<GetEndEffectorPos-response> is deprecated: use poppy_torso_control-srv:GetEndEffectorPos-response instead.")))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <GetEndEffectorPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:xyz-val is deprecated.  Use poppy_torso_control-srv:xyz instead.")
  (xyz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorPos-response>) ostream)
  "Serializes a message object of type '<GetEndEffectorPos-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'xyz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'xyz))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorPos-response>) istream)
  "Deserializes a message object of type '<GetEndEffectorPos-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'xyz) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'xyz)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorPos-response>)))
  "Returns string type for a service object of type '<GetEndEffectorPos-response>"
  "poppy_torso_control/GetEndEffectorPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorPos-response)))
  "Returns string type for a service object of type 'GetEndEffectorPos-response"
  "poppy_torso_control/GetEndEffectorPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorPos-response>)))
  "Returns md5sum for a message object of type '<GetEndEffectorPos-response>"
  "d8748f63ec08641b4cee5181223ababf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorPos-response)))
  "Returns md5sum for a message object of type 'GetEndEffectorPos-response"
  "d8748f63ec08641b4cee5181223ababf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorPos-response>)))
  "Returns full string definition for message of type '<GetEndEffectorPos-response>"
  (cl:format cl:nil "float32[] xyz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorPos-response)))
  "Returns full string definition for message of type 'GetEndEffectorPos-response"
  (cl:format cl:nil "float32[] xyz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorPos-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'xyz) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorPos-response
    (cl:cons ':xyz (xyz msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEndEffectorPos)))
  'GetEndEffectorPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEndEffectorPos)))
  'GetEndEffectorPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorPos)))
  "Returns string type for a service object of type '<GetEndEffectorPos>"
  "poppy_torso_control/GetEndEffectorPos")