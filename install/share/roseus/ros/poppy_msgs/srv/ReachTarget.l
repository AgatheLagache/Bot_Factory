;; Auto-generated. Do not edit!


(when (boundp 'poppy_msgs::ReachTarget)
  (if (not (find-package "POPPY_MSGS"))
    (make-package "POPPY_MSGS"))
  (shadow 'ReachTarget (find-package "POPPY_MSGS")))
(unless (find-package "POPPY_MSGS::REACHTARGET")
  (make-package "POPPY_MSGS::REACHTARGET"))
(unless (find-package "POPPY_MSGS::REACHTARGETREQUEST")
  (make-package "POPPY_MSGS::REACHTARGETREQUEST"))
(unless (find-package "POPPY_MSGS::REACHTARGETRESPONSE")
  (make-package "POPPY_MSGS::REACHTARGETRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass poppy_msgs::ReachTargetRequest
  :super ros::object
  :slots (_target _duration ))

(defmethod poppy_msgs::ReachTargetRequest
  (:init
   (&key
    ((:target __target) (instance sensor_msgs::JointState :init))
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _target __target)
   (setq _duration __duration)
   self)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _target
    (send _target :serialization-length)
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _target
       (send _target :serialize s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass poppy_msgs::ReachTargetResponse
  :super ros::object
  :slots ())

(defmethod poppy_msgs::ReachTargetResponse
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

(defclass poppy_msgs::ReachTarget
  :super ros::object
  :slots ())

(setf (get poppy_msgs::ReachTarget :md5sum-) "17ad4788f8e48b9ff03f360038e12ec2")
(setf (get poppy_msgs::ReachTarget :datatype-) "poppy_msgs/ReachTarget")
(setf (get poppy_msgs::ReachTarget :request) poppy_msgs::ReachTargetRequest)
(setf (get poppy_msgs::ReachTarget :response) poppy_msgs::ReachTargetResponse)

(defmethod poppy_msgs::ReachTargetRequest
  (:response () (instance poppy_msgs::ReachTargetResponse :init)))

(setf (get poppy_msgs::ReachTargetRequest :md5sum-) "17ad4788f8e48b9ff03f360038e12ec2")
(setf (get poppy_msgs::ReachTargetRequest :datatype-) "poppy_msgs/ReachTargetRequest")
(setf (get poppy_msgs::ReachTargetRequest :definition-)
      "sensor_msgs/JointState target
duration duration

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---

")

(setf (get poppy_msgs::ReachTargetResponse :md5sum-) "17ad4788f8e48b9ff03f360038e12ec2")
(setf (get poppy_msgs::ReachTargetResponse :datatype-) "poppy_msgs/ReachTargetResponse")
(setf (get poppy_msgs::ReachTargetResponse :definition-)
      "sensor_msgs/JointState target
duration duration

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---

")



(provide :poppy_msgs/ReachTarget "17ad4788f8e48b9ff03f360038e12ec2")


