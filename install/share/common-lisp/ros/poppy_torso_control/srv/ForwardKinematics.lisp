; Auto-generated. Do not edit!


(cl:in-package poppy_torso_control-srv)


;//! \htmlinclude ForwardKinematics-request.msg.html

(cl:defclass <ForwardKinematics-request> (roslisp-msg-protocol:ros-message)
  ((group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ForwardKinematics-request (<ForwardKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<ForwardKinematics-request> is deprecated: use poppy_torso_control-srv:ForwardKinematics-request instead.")))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <ForwardKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:group-val is deprecated.  Use poppy_torso_control-srv:group instead.")
  (group m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <ForwardKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:joints-val is deprecated.  Use poppy_torso_control-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardKinematics-request>) ostream)
  "Serializes a message object of type '<ForwardKinematics-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardKinematics-request>) istream)
  "Deserializes a message object of type '<ForwardKinematics-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardKinematics-request>)))
  "Returns string type for a service object of type '<ForwardKinematics-request>"
  "poppy_torso_control/ForwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics-request)))
  "Returns string type for a service object of type 'ForwardKinematics-request"
  "poppy_torso_control/ForwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardKinematics-request>)))
  "Returns md5sum for a message object of type '<ForwardKinematics-request>"
  "fd29b61d63688aceaae9b2f12b8a16ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardKinematics-request)))
  "Returns md5sum for a message object of type 'ForwardKinematics-request"
  "fd29b61d63688aceaae9b2f12b8a16ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardKinematics-request>)))
  "Returns full string definition for message of type '<ForwardKinematics-request>"
  (cl:format cl:nil "string  group~%float32[] joints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardKinematics-request)))
  "Returns full string definition for message of type 'ForwardKinematics-request"
  (cl:format cl:nil "string  group~%float32[] joints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardKinematics-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardKinematics-request
    (cl:cons ':group (group msg))
    (cl:cons ':joints (joints msg))
))
;//! \htmlinclude ForwardKinematics-response.msg.html

(cl:defclass <ForwardKinematics-response> (roslisp-msg-protocol:ros-message)
  ((end_pos
    :reader end_pos
    :initarg :end_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ForwardKinematics-response (<ForwardKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<ForwardKinematics-response> is deprecated: use poppy_torso_control-srv:ForwardKinematics-response instead.")))

(cl:ensure-generic-function 'end_pos-val :lambda-list '(m))
(cl:defmethod end_pos-val ((m <ForwardKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:end_pos-val is deprecated.  Use poppy_torso_control-srv:end_pos instead.")
  (end_pos m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ForwardKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:error-val is deprecated.  Use poppy_torso_control-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardKinematics-response>) ostream)
  "Serializes a message object of type '<ForwardKinematics-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'end_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'end_pos))
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardKinematics-response>) istream)
  "Deserializes a message object of type '<ForwardKinematics-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'end_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'end_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardKinematics-response>)))
  "Returns string type for a service object of type '<ForwardKinematics-response>"
  "poppy_torso_control/ForwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics-response)))
  "Returns string type for a service object of type 'ForwardKinematics-response"
  "poppy_torso_control/ForwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardKinematics-response>)))
  "Returns md5sum for a message object of type '<ForwardKinematics-response>"
  "fd29b61d63688aceaae9b2f12b8a16ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardKinematics-response)))
  "Returns md5sum for a message object of type 'ForwardKinematics-response"
  "fd29b61d63688aceaae9b2f12b8a16ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardKinematics-response>)))
  "Returns full string definition for message of type '<ForwardKinematics-response>"
  (cl:format cl:nil "float32[] end_pos ~%int8 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardKinematics-response)))
  "Returns full string definition for message of type 'ForwardKinematics-response"
  (cl:format cl:nil "float32[] end_pos ~%int8 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardKinematics-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'end_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardKinematics-response
    (cl:cons ':end_pos (end_pos msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForwardKinematics)))
  'ForwardKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForwardKinematics)))
  'ForwardKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics)))
  "Returns string type for a service object of type '<ForwardKinematics>"
  "poppy_torso_control/ForwardKinematics")