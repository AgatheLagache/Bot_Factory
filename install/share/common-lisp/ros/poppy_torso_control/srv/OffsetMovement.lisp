; Auto-generated. Do not edit!


(cl:in-package poppy_torso_control-srv)


;//! \htmlinclude OffsetMovement-request.msg.html

(cl:defclass <OffsetMovement-request> (roslisp-msg-protocol:ros-message)
  ((group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (offset
    :reader offset
    :initarg :offset
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (execute
    :reader execute
    :initarg :execute
    :type cl:boolean
    :initform cl:nil)
   (wait
    :reader wait
    :initarg :wait
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OffsetMovement-request (<OffsetMovement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OffsetMovement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OffsetMovement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<OffsetMovement-request> is deprecated: use poppy_torso_control-srv:OffsetMovement-request instead.")))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <OffsetMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:group-val is deprecated.  Use poppy_torso_control-srv:group instead.")
  (group m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <OffsetMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:offset-val is deprecated.  Use poppy_torso_control-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'execute-val :lambda-list '(m))
(cl:defmethod execute-val ((m <OffsetMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:execute-val is deprecated.  Use poppy_torso_control-srv:execute instead.")
  (execute m))

(cl:ensure-generic-function 'wait-val :lambda-list '(m))
(cl:defmethod wait-val ((m <OffsetMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:wait-val is deprecated.  Use poppy_torso_control-srv:wait instead.")
  (wait m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OffsetMovement-request>) ostream)
  "Serializes a message object of type '<OffsetMovement-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'offset))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'execute) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OffsetMovement-request>) istream)
  "Deserializes a message object of type '<OffsetMovement-request>"
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
  (cl:setf (cl:slot-value msg 'offset) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offset)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'execute) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wait) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OffsetMovement-request>)))
  "Returns string type for a service object of type '<OffsetMovement-request>"
  "poppy_torso_control/OffsetMovementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetMovement-request)))
  "Returns string type for a service object of type 'OffsetMovement-request"
  "poppy_torso_control/OffsetMovementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OffsetMovement-request>)))
  "Returns md5sum for a message object of type '<OffsetMovement-request>"
  "952c1ced12c3623ff08e433209bdfd8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OffsetMovement-request)))
  "Returns md5sum for a message object of type 'OffsetMovement-request"
  "952c1ced12c3623ff08e433209bdfd8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OffsetMovement-request>)))
  "Returns full string definition for message of type '<OffsetMovement-request>"
  (cl:format cl:nil "string          group~%float32[]       offset~%bool            execute~%bool            wait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OffsetMovement-request)))
  "Returns full string definition for message of type 'OffsetMovement-request"
  (cl:format cl:nil "string          group~%float32[]       offset~%bool            execute~%bool            wait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OffsetMovement-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offset) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OffsetMovement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OffsetMovement-request
    (cl:cons ':group (group msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':execute (execute msg))
    (cl:cons ':wait (wait msg))
))
;//! \htmlinclude OffsetMovement-response.msg.html

(cl:defclass <OffsetMovement-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0)
   (start_pos
    :reader start_pos
    :initarg :start_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (target_pos
    :reader target_pos
    :initarg :target_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OffsetMovement-response (<OffsetMovement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OffsetMovement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OffsetMovement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<OffsetMovement-response> is deprecated: use poppy_torso_control-srv:OffsetMovement-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <OffsetMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:error-val is deprecated.  Use poppy_torso_control-srv:error instead.")
  (error m))

(cl:ensure-generic-function 'start_pos-val :lambda-list '(m))
(cl:defmethod start_pos-val ((m <OffsetMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:start_pos-val is deprecated.  Use poppy_torso_control-srv:start_pos instead.")
  (start_pos m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <OffsetMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:target_pos-val is deprecated.  Use poppy_torso_control-srv:target_pos instead.")
  (target_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OffsetMovement-response>) ostream)
  "Serializes a message object of type '<OffsetMovement-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'start_pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'target_pos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OffsetMovement-response>) istream)
  "Deserializes a message object of type '<OffsetMovement-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OffsetMovement-response>)))
  "Returns string type for a service object of type '<OffsetMovement-response>"
  "poppy_torso_control/OffsetMovementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetMovement-response)))
  "Returns string type for a service object of type 'OffsetMovement-response"
  "poppy_torso_control/OffsetMovementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OffsetMovement-response>)))
  "Returns md5sum for a message object of type '<OffsetMovement-response>"
  "952c1ced12c3623ff08e433209bdfd8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OffsetMovement-response)))
  "Returns md5sum for a message object of type 'OffsetMovement-response"
  "952c1ced12c3623ff08e433209bdfd8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OffsetMovement-response>)))
  "Returns full string definition for message of type '<OffsetMovement-response>"
  (cl:format cl:nil "int8            error~%float32[]       start_pos~%float32[]       target_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OffsetMovement-response)))
  "Returns full string definition for message of type 'OffsetMovement-response"
  (cl:format cl:nil "int8            error~%float32[]       start_pos~%float32[]       target_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OffsetMovement-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OffsetMovement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OffsetMovement-response
    (cl:cons ':error (error msg))
    (cl:cons ':start_pos (start_pos msg))
    (cl:cons ':target_pos (target_pos msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OffsetMovement)))
  'OffsetMovement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OffsetMovement)))
  'OffsetMovement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetMovement)))
  "Returns string type for a service object of type '<OffsetMovement>"
  "poppy_torso_control/OffsetMovement")