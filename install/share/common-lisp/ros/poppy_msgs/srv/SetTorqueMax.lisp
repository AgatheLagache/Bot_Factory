; Auto-generated. Do not edit!


(cl:in-package poppy_msgs-srv)


;//! \htmlinclude SetTorqueMax-request.msg.html

(cl:defclass <SetTorqueMax-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (max_torques
    :reader max_torques
    :initarg :max_torques
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetTorqueMax-request (<SetTorqueMax-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTorqueMax-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTorqueMax-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<SetTorqueMax-request> is deprecated: use poppy_msgs-srv:SetTorqueMax-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <SetTorqueMax-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:joint_names-val is deprecated.  Use poppy_msgs-srv:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'max_torques-val :lambda-list '(m))
(cl:defmethod max_torques-val ((m <SetTorqueMax-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:max_torques-val is deprecated.  Use poppy_msgs-srv:max_torques instead.")
  (max_torques m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTorqueMax-request>) ostream)
  "Serializes a message object of type '<SetTorqueMax-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_torques))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'max_torques))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTorqueMax-request>) istream)
  "Deserializes a message object of type '<SetTorqueMax-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'max_torques) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_torques)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTorqueMax-request>)))
  "Returns string type for a service object of type '<SetTorqueMax-request>"
  "poppy_msgs/SetTorqueMaxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueMax-request)))
  "Returns string type for a service object of type 'SetTorqueMax-request"
  "poppy_msgs/SetTorqueMaxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTorqueMax-request>)))
  "Returns md5sum for a message object of type '<SetTorqueMax-request>"
  "38f0e745a4598ee480032418e4d9c65f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTorqueMax-request)))
  "Returns md5sum for a message object of type 'SetTorqueMax-request"
  "38f0e745a4598ee480032418e4d9c65f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTorqueMax-request>)))
  "Returns full string definition for message of type '<SetTorqueMax-request>"
  (cl:format cl:nil "string[] joint_names~%float32[] max_torques~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTorqueMax-request)))
  "Returns full string definition for message of type 'SetTorqueMax-request"
  (cl:format cl:nil "string[] joint_names~%float32[] max_torques~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTorqueMax-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_torques) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTorqueMax-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTorqueMax-request
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':max_torques (max_torques msg))
))
;//! \htmlinclude SetTorqueMax-response.msg.html

(cl:defclass <SetTorqueMax-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTorqueMax-response (<SetTorqueMax-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTorqueMax-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTorqueMax-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<SetTorqueMax-response> is deprecated: use poppy_msgs-srv:SetTorqueMax-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTorqueMax-response>) ostream)
  "Serializes a message object of type '<SetTorqueMax-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTorqueMax-response>) istream)
  "Deserializes a message object of type '<SetTorqueMax-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTorqueMax-response>)))
  "Returns string type for a service object of type '<SetTorqueMax-response>"
  "poppy_msgs/SetTorqueMaxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueMax-response)))
  "Returns string type for a service object of type 'SetTorqueMax-response"
  "poppy_msgs/SetTorqueMaxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTorqueMax-response>)))
  "Returns md5sum for a message object of type '<SetTorqueMax-response>"
  "38f0e745a4598ee480032418e4d9c65f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTorqueMax-response)))
  "Returns md5sum for a message object of type 'SetTorqueMax-response"
  "38f0e745a4598ee480032418e4d9c65f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTorqueMax-response>)))
  "Returns full string definition for message of type '<SetTorqueMax-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTorqueMax-response)))
  "Returns full string definition for message of type 'SetTorqueMax-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTorqueMax-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTorqueMax-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTorqueMax-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTorqueMax)))
  'SetTorqueMax-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTorqueMax)))
  'SetTorqueMax-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTorqueMax)))
  "Returns string type for a service object of type '<SetTorqueMax>"
  "poppy_msgs/SetTorqueMax")