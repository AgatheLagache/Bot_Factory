; Auto-generated. Do not edit!


(cl:in-package poppy_msgs-srv)


;//! \htmlinclude ExecuteTrajectory-request.msg.html

(cl:defclass <ExecuteTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass ExecuteTrajectory-request (<ExecuteTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<ExecuteTrajectory-request> is deprecated: use poppy_msgs-srv:ExecuteTrajectory-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <ExecuteTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poppy_msgs-srv:trajectory-val is deprecated.  Use poppy_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteTrajectory-request>) ostream)
  "Serializes a message object of type '<ExecuteTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteTrajectory-request>) istream)
  "Deserializes a message object of type '<ExecuteTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteTrajectory-request>)))
  "Returns string type for a service object of type '<ExecuteTrajectory-request>"
  "poppy_msgs/ExecuteTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTrajectory-request)))
  "Returns string type for a service object of type 'ExecuteTrajectory-request"
  "poppy_msgs/ExecuteTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteTrajectory-request>)))
  "Returns md5sum for a message object of type '<ExecuteTrajectory-request>"
  "2a0eff76c870e8595636c2a562ca298e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteTrajectory-request)))
  "Returns md5sum for a message object of type 'ExecuteTrajectory-request"
  "2a0eff76c870e8595636c2a562ca298e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteTrajectory-request>)))
  "Returns full string definition for message of type '<ExecuteTrajectory-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteTrajectory-request)))
  "Returns full string definition for message of type 'ExecuteTrajectory-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteTrajectory-request
    (cl:cons ':trajectory (trajectory msg))
))
;//! \htmlinclude ExecuteTrajectory-response.msg.html

(cl:defclass <ExecuteTrajectory-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExecuteTrajectory-response (<ExecuteTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poppy_msgs-srv:<ExecuteTrajectory-response> is deprecated: use poppy_msgs-srv:ExecuteTrajectory-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteTrajectory-response>) ostream)
  "Serializes a message object of type '<ExecuteTrajectory-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteTrajectory-response>) istream)
  "Deserializes a message object of type '<ExecuteTrajectory-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteTrajectory-response>)))
  "Returns string type for a service object of type '<ExecuteTrajectory-response>"
  "poppy_msgs/ExecuteTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTrajectory-response)))
  "Returns string type for a service object of type 'ExecuteTrajectory-response"
  "poppy_msgs/ExecuteTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteTrajectory-response>)))
  "Returns md5sum for a message object of type '<ExecuteTrajectory-response>"
  "2a0eff76c870e8595636c2a562ca298e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteTrajectory-response)))
  "Returns md5sum for a message object of type 'ExecuteTrajectory-response"
  "2a0eff76c870e8595636c2a562ca298e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteTrajectory-response>)))
  "Returns full string definition for message of type '<ExecuteTrajectory-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteTrajectory-response)))
  "Returns full string definition for message of type 'ExecuteTrajectory-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteTrajectory-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteTrajectory-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecuteTrajectory)))
  'ExecuteTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecuteTrajectory)))
  'ExecuteTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTrajectory)))
  "Returns string type for a service object of type '<ExecuteTrajectory>"
  "poppy_msgs/ExecuteTrajectory")