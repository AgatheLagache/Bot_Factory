; Auto-generated. Do not edit!


(cl:in-package poppy_torso_control-srv)


;//! \htmlinclude CollisionDistance-request.msg.html

(cl:defclass <CollisionDistance-request> (roslisp-msg-protocol:ros-message)
  ((group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (offset
    :reader offset
    :initarg :offset
    :type cl:boolean
    :initform cl:nil)
   (offset_values
    :reader offset_values
    :initarg :offset_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CollisionDistance-request (<CollisionDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<CollisionDistance-request> is deprecated: use poppy_torso_control-srv:CollisionDistance-request instead.")))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <CollisionDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:group-val is deprecated.  Use poppy_torso_control-srv:group instead.")
  (group m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <CollisionDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:offset-val is deprecated.  Use poppy_torso_control-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'offset_values-val :lambda-list '(m))
(cl:defmethod offset_values-val ((m <CollisionDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:offset_values-val is deprecated.  Use poppy_torso_control-srv:offset_values instead.")
  (offset_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionDistance-request>) ostream)
  "Serializes a message object of type '<CollisionDistance-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offset) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offset_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'offset_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionDistance-request>) istream)
  "Deserializes a message object of type '<CollisionDistance-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'offset) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'offset_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offset_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionDistance-request>)))
  "Returns string type for a service object of type '<CollisionDistance-request>"
  "poppy_torso_control/CollisionDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionDistance-request)))
  "Returns string type for a service object of type 'CollisionDistance-request"
  "poppy_torso_control/CollisionDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionDistance-request>)))
  "Returns md5sum for a message object of type '<CollisionDistance-request>"
  "c3379f95c70098db0befc78cb72e972b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionDistance-request)))
  "Returns md5sum for a message object of type 'CollisionDistance-request"
  "c3379f95c70098db0befc78cb72e972b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionDistance-request>)))
  "Returns full string definition for message of type '<CollisionDistance-request>"
  (cl:format cl:nil "string          group~%bool            offset~%float32[]       offset_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionDistance-request)))
  "Returns full string definition for message of type 'CollisionDistance-request"
  (cl:format cl:nil "string          group~%bool            offset~%float32[]       offset_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionDistance-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offset_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionDistance-request
    (cl:cons ':group (group msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':offset_values (offset_values msg))
))
;//! \htmlinclude CollisionDistance-response.msg.html

(cl:defclass <CollisionDistance-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (collision
    :reader collision
    :initarg :collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CollisionDistance-response (<CollisionDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_torso_control-srv:<CollisionDistance-response> is deprecated: use poppy_torso_control-srv:CollisionDistance-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <CollisionDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:distance-val is deprecated.  Use poppy_torso_control-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'collision-val :lambda-list '(m))
(cl:defmethod collision-val ((m <CollisionDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_torso_control-srv:collision-val is deprecated.  Use poppy_torso_control-srv:collision instead.")
  (collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionDistance-response>) ostream)
  "Serializes a message object of type '<CollisionDistance-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionDistance-response>) istream)
  "Deserializes a message object of type '<CollisionDistance-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionDistance-response>)))
  "Returns string type for a service object of type '<CollisionDistance-response>"
  "poppy_torso_control/CollisionDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionDistance-response)))
  "Returns string type for a service object of type 'CollisionDistance-response"
  "poppy_torso_control/CollisionDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionDistance-response>)))
  "Returns md5sum for a message object of type '<CollisionDistance-response>"
  "c3379f95c70098db0befc78cb72e972b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionDistance-response)))
  "Returns md5sum for a message object of type 'CollisionDistance-response"
  "c3379f95c70098db0befc78cb72e972b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionDistance-response>)))
  "Returns full string definition for message of type '<CollisionDistance-response>"
  (cl:format cl:nil "float32         distance~%bool            collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionDistance-response)))
  "Returns full string definition for message of type 'CollisionDistance-response"
  (cl:format cl:nil "float32         distance~%bool            collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionDistance-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionDistance-response
    (cl:cons ':distance (distance msg))
    (cl:cons ':collision (collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CollisionDistance)))
  'CollisionDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CollisionDistance)))
  'CollisionDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionDistance)))
  "Returns string type for a service object of type '<CollisionDistance>"
  "poppy_torso_control/CollisionDistance")