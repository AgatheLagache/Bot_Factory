; Auto-generated. Do not edit!


(cl:in-package poppy_torso_control-srv)


;//! \htmlinclude PlanMovement-request.msg.html

(cl:defclass <PlanMovement-request> (roslisp-msg-protocol:ros-message)
  ((group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (rand_start
    :reader rand_start
    :initarg :rand_start
    :type cl:boolean
    :initform cl:nil)
   (current_start
    :reader current_start
    :initarg :current_start
    :type cl:boolean
    :initform cl:nil)
   (start_pos
    :reader start_pos
    :initarg :start_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rand_target
    :reader rand_target
    :initarg :rand_target
    :type cl:boolean
    :initform cl:nil)
   (target_pos
    :reader target_pos
    :initarg :target_pos
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
    :initform cl:nil)
   (ret_plan
    :reader ret_plan
    :initarg :ret_plan
    :type cl:boolean
    :initform cl:nil)
   (ret_fps
    :reader ret_fps
    :initarg :ret_fps
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlanMovement-request (<PlanMovement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanMovement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanMovement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<PlanMovement-request> is deprecated: use poppy_torso_control-srv:PlanMovement-request instead.")))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:group-val is deprecated.  Use poppy_torso_control-srv:group instead.")
  (group m))

(cl:ensure-generic-function 'rand_start-val :lambda-list '(m))
(cl:defmethod rand_start-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:rand_start-val is deprecated.  Use poppy_torso_control-srv:rand_start instead.")
  (rand_start m))

(cl:ensure-generic-function 'current_start-val :lambda-list '(m))
(cl:defmethod current_start-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:current_start-val is deprecated.  Use poppy_torso_control-srv:current_start instead.")
  (current_start m))

(cl:ensure-generic-function 'start_pos-val :lambda-list '(m))
(cl:defmethod start_pos-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:start_pos-val is deprecated.  Use poppy_torso_control-srv:start_pos instead.")
  (start_pos m))

(cl:ensure-generic-function 'rand_target-val :lambda-list '(m))
(cl:defmethod rand_target-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:rand_target-val is deprecated.  Use poppy_torso_control-srv:rand_target instead.")
  (rand_target m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:target_pos-val is deprecated.  Use poppy_torso_control-srv:target_pos instead.")
  (target_pos m))

(cl:ensure-generic-function 'execute-val :lambda-list '(m))
(cl:defmethod execute-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:execute-val is deprecated.  Use poppy_torso_control-srv:execute instead.")
  (execute m))

(cl:ensure-generic-function 'wait-val :lambda-list '(m))
(cl:defmethod wait-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:wait-val is deprecated.  Use poppy_torso_control-srv:wait instead.")
  (wait m))

(cl:ensure-generic-function 'ret_plan-val :lambda-list '(m))
(cl:defmethod ret_plan-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:ret_plan-val is deprecated.  Use poppy_torso_control-srv:ret_plan instead.")
  (ret_plan m))

(cl:ensure-generic-function 'ret_fps-val :lambda-list '(m))
(cl:defmethod ret_fps-val ((m <PlanMovement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:ret_fps-val is deprecated.  Use poppy_torso_control-srv:ret_fps instead.")
  (ret_fps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanMovement-request>) ostream)
  "Serializes a message object of type '<PlanMovement-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rand_start) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'current_start) 1 0)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rand_target) 1 0)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'execute) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret_plan) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ret_fps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanMovement-request>) istream)
  "Deserializes a message object of type '<PlanMovement-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'rand_start) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'current_start) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'rand_target) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'execute) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wait) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ret_plan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret_fps) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanMovement-request>)))
  "Returns string type for a service object of type '<PlanMovement-request>"
  "poppy_torso_control/PlanMovementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanMovement-request)))
  "Returns string type for a service object of type 'PlanMovement-request"
  "poppy_torso_control/PlanMovementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanMovement-request>)))
  "Returns md5sum for a message object of type '<PlanMovement-request>"
  "739716dc3ed3bb73b035e54b77eee141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanMovement-request)))
  "Returns md5sum for a message object of type 'PlanMovement-request"
  "739716dc3ed3bb73b035e54b77eee141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanMovement-request>)))
  "Returns full string definition for message of type '<PlanMovement-request>"
  (cl:format cl:nil "string          group~%bool            rand_start~%bool            current_start~%float32[]       start_pos~%bool            rand_target~%float32[]       target_pos~%bool            execute~%bool            wait~%bool            ret_plan~%int8            ret_fps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanMovement-request)))
  "Returns full string definition for message of type 'PlanMovement-request"
  (cl:format cl:nil "string          group~%bool            rand_start~%bool            current_start~%float32[]       start_pos~%bool            rand_target~%float32[]       target_pos~%bool            execute~%bool            wait~%bool            ret_plan~%int8            ret_fps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanMovement-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanMovement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanMovement-request
    (cl:cons ':group (group msg))
    (cl:cons ':rand_start (rand_start msg))
    (cl:cons ':current_start (current_start msg))
    (cl:cons ':start_pos (start_pos msg))
    (cl:cons ':rand_target (rand_target msg))
    (cl:cons ':target_pos (target_pos msg))
    (cl:cons ':execute (execute msg))
    (cl:cons ':wait (wait msg))
    (cl:cons ':ret_plan (ret_plan msg))
    (cl:cons ':ret_fps (ret_fps msg))
))
;//! \htmlinclude PlanMovement-response.msg.html

(cl:defclass <PlanMovement-response> (roslisp-msg-protocol:ros-message)
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
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (plans
    :reader plans
    :initarg :plans
    :type (cl:vector poppy_torso_control-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'poppy_torso_control-msg:Trajectory :initial-element (cl:make-instance 'poppy_torso_control-msg:Trajectory))))
)

(cl:defclass PlanMovement-response (<PlanMovement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanMovement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanMovement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<PlanMovement-response> is deprecated: use poppy_torso_control-srv:PlanMovement-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PlanMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:error-val is deprecated.  Use poppy_torso_control-srv:error instead.")
  (error m))

(cl:ensure-generic-function 'start_pos-val :lambda-list '(m))
(cl:defmethod start_pos-val ((m <PlanMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:start_pos-val is deprecated.  Use poppy_torso_control-srv:start_pos instead.")
  (start_pos m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <PlanMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:target_pos-val is deprecated.  Use poppy_torso_control-srv:target_pos instead.")
  (target_pos m))

(cl:ensure-generic-function 'plans-val :lambda-list '(m))
(cl:defmethod plans-val ((m <PlanMovement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:plans-val is deprecated.  Use poppy_torso_control-srv:plans instead.")
  (plans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanMovement-response>) ostream)
  "Serializes a message object of type '<PlanMovement-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'plans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanMovement-response>) istream)
  "Deserializes a message object of type '<PlanMovement-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'poppy_torso_control-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanMovement-response>)))
  "Returns string type for a service object of type '<PlanMovement-response>"
  "poppy_torso_control/PlanMovementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanMovement-response)))
  "Returns string type for a service object of type 'PlanMovement-response"
  "poppy_torso_control/PlanMovementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanMovement-response>)))
  "Returns md5sum for a message object of type '<PlanMovement-response>"
  "739716dc3ed3bb73b035e54b77eee141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanMovement-response)))
  "Returns md5sum for a message object of type 'PlanMovement-response"
  "739716dc3ed3bb73b035e54b77eee141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanMovement-response>)))
  "Returns full string definition for message of type '<PlanMovement-response>"
  (cl:format cl:nil "int8            error~%float32[]       start_pos~%float32[]       target_pos~%Trajectory[]    plans~%~%================================================================================~%MSG: poppy_torso_control/Trajectory~%# This message stores a movement~%#~%# * joint: name of the joint~%#~%# * trajectory: array of positions~%#~%~%string      joint~%float32[]   trajectory~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanMovement-response)))
  "Returns full string definition for message of type 'PlanMovement-response"
  (cl:format cl:nil "int8            error~%float32[]       start_pos~%float32[]       target_pos~%Trajectory[]    plans~%~%================================================================================~%MSG: poppy_torso_control/Trajectory~%# This message stores a movement~%#~%# * joint: name of the joint~%#~%# * trajectory: array of positions~%#~%~%string      joint~%float32[]   trajectory~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanMovement-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanMovement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanMovement-response
    (cl:cons ':error (error msg))
    (cl:cons ':start_pos (start_pos msg))
    (cl:cons ':target_pos (target_pos msg))
    (cl:cons ':plans (plans msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanMovement)))
  'PlanMovement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanMovement)))
  'PlanMovement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanMovement)))
  "Returns string type for a service object of type '<PlanMovement>"
  "poppy_torso_control/PlanMovement")