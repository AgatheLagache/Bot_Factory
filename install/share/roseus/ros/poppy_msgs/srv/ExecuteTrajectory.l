;; Auto-generated. Do not edit!


(when (boundp 'poppy_msgs::ExecuteTrajectory)
  (if (not (find-package "POPPY_MSGS"))
    (make-package "POPPY_MSGS"))
  (shadow 'ExecuteTrajectory (find-package "POPPY_MSGS")))
(unless (find-package "POPPY_MSGS::EXECUTETRAJECTORY")
  (make-package "POPPY_MSGS::EXECUTETRAJECTORY"))
(unless (find-package "POPPY_MSGS::EXECUTETRAJECTORYREQUEST")
  (make-package "POPPY_MSGS::EXECUTETRAJECTORYREQUEST"))
(unless (find-package "POPPY_MSGS::EXECUTETRAJECTORYRESPONSE")
  (make-package "POPPY_MSGS::EXECUTETRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass poppy_msgs::ExecuteTrajectoryRequest
  :super ros::object
  :slots (_trajectory ))

(defmethod poppy_msgs::ExecuteTrajectoryRequest
  (:init
   (&key
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass poppy_msgs::ExecuteTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod poppy_msgs::ExecuteTrajectoryResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass poppy_msgs::ExecuteTrajectory
  :super ros::object
  :slots ())

(setf (get poppy_msgs::ExecuteTrajectory :md5sum-) "2a0eff76c870e8595636c2a562ca298e")
(setf (get poppy_msgs::ExecuteTrajectory :datatype-) "poppy_msgs/ExecuteTrajectory")
(setf (get poppy_msgs::ExecuteTrajectory :request) poppy_msgs::ExecuteTrajectoryRequest)
(setf (get poppy_msgs::ExecuteTrajectory :response) poppy_msgs::ExecuteTrajectoryResponse)

(defmethod poppy_msgs::ExecuteTrajectoryRequest
  (:response () (instance poppy_msgs::ExecuteTrajectoryResponse :init)))

(setf (get poppy_msgs::ExecuteTrajectoryRequest :md5sum-) "2a0eff76c870e8595636c2a562ca298e")
(setf (get poppy_msgs::ExecuteTrajectoryRequest :datatype-) "poppy_msgs/ExecuteTrajectoryRequest")
(setf (get poppy_msgs::ExecuteTrajectoryRequest :definition-)
      "trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
")

(setf (get poppy_msgs::ExecuteTrajectoryResponse :md5sum-) "2a0eff76c870e8595636c2a562ca298e")
(setf (get poppy_msgs::ExecuteTrajectoryResponse :datatype-) "poppy_msgs/ExecuteTrajectoryResponse")
(setf (get poppy_msgs::ExecuteTrajectoryResponse :definition-)
      "trajectory_msgs/JointTrajectory trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
")



(provide :poppy_msgs/ExecuteTrajectory "2a0eff76c870e8595636c2a562ca298e")


