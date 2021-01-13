; Auto-generated. Do not edit!


(cl:in-package poppy_msgs-srv)


;//! \htmlinclude ReachTarget-request.msg.html

(cl:defclass <ReachTarget-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass ReachTarget-request (<ReachTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReachTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReachTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<ReachTarget-request> is deprecated: use poppy_msgs-srv:ReachTarget-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <ReachTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:target-val is deprecated.  Use poppy_msgs-srv:target instead.")
  (target m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ReachTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:duration-val is deprecated.  Use poppy_msgs-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReachTarget-request>) ostream)
  "Serializes a message object of type '<ReachTarget-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReachTarget-request>) istream)
  "Deserializes a message object of type '<ReachTarget-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReachTarget-request>)))
  "Returns string type for a service object of type '<ReachTarget-request>"
  "poppy_msgs/ReachTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachTarget-request)))
  "Returns string type for a service object of type 'ReachTarget-request"
  "poppy_msgs/ReachTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReachTarget-request>)))
  "Returns md5sum for a message object of type '<ReachTarget-request>"
  "17ad4788f8e48b9ff03f360038e12ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReachTarget-request)))
  "Returns md5sum for a message object of type 'ReachTarget-request"
  "17ad4788f8e48b9ff03f360038e12ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReachTarget-request>)))
  "Returns full string definition for message of type '<ReachTarget-request>"
  (cl:format cl:nil "sensor_msgs/JointState target~%duration duration~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReachTarget-request)))
  "Returns full string definition for message of type 'ReachTarget-request"
  (cl:format cl:nil "sensor_msgs/JointState target~%duration duration~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReachTarget-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReachTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReachTarget-request
    (cl:cons ':target (target msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude ReachTarget-response.msg.html

(cl:defclass <ReachTarget-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ReachTarget-response (<ReachTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReachTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReachTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<ReachTarget-response> is deprecated: use poppy_msgs-srv:ReachTarget-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReachTarget-response>) ostream)
  "Serializes a message object of type '<ReachTarget-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReachTarget-response>) istream)
  "Deserializes a message object of type '<ReachTarget-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReachTarget-response>)))
  "Returns string type for a service object of type '<ReachTarget-response>"
  "poppy_msgs/ReachTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachTarget-response)))
  "Returns string type for a service object of type 'ReachTarget-response"
  "poppy_msgs/ReachTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReachTarget-response>)))
  "Returns md5sum for a message object of type '<ReachTarget-response>"
  "17ad4788f8e48b9ff03f360038e12ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReachTarget-response)))
  "Returns md5sum for a message object of type 'ReachTarget-response"
  "17ad4788f8e48b9ff03f360038e12ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReachTarget-response>)))
  "Returns full string definition for message of type '<ReachTarget-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReachTarget-response)))
  "Returns full string definition for message of type 'ReachTarget-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReachTarget-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReachTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReachTarget-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReachTarget)))
  'ReachTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReachTarget)))
  'ReachTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReachTarget)))
  "Returns string type for a service object of type '<ReachTarget>"
  "poppy_msgs/ReachTarget")