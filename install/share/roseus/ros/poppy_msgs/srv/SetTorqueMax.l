;; Auto-generated. Do not edit!


(when (boundp 'poppy_msgs::SetTorqueMax)
  (if (not (find-package "POPPY_MSGS"))
    (make-package "POPPY_MSGS"))
  (shadow 'SetTorqueMax (find-package "POPPY_MSGS")))
(unless (find-package "POPPY_MSGS::SETTORQUEMAX")
  (make-package "POPPY_MSGS::SETTORQUEMAX"))
(unless (find-package "POPPY_MSGS::SETTORQUEMAXREQUEST")
  (make-package "POPPY_MSGS::SETTORQUEMAXREQUEST"))
(unless (find-package "POPPY_MSGS::SETTORQUEMAXRESPONSE")
  (make-package "POPPY_MSGS::SETTORQUEMAXRESPONSE"))

(in-package "ROS")





(defclass poppy_msgs::SetTorqueMaxRequest
  :super ros::object
  :slots (_joint_names _max_torques ))

(defmethod poppy_msgs::SetTorqueMaxRequest
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:max_torques __max_torques) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _max_torques __max_torques)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:max_torques
   (&optional __max_torques)
   (if __max_torques (setq _max_torques __max_torques)) _max_torques)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float32[] _max_torques
    (* 4    (length _max_torques)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _max_torques
     (write-long (length _max_torques) s)
     (dotimes (i (length _max_torques))
       (sys::poke (elt _max_torques i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _max_torques
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_torques (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_torques i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass poppy_msgs::SetTorqueMaxResponse
  :super ros::object
  :slots ())

(defmethod poppy_msgs::SetTorqueMaxResponse
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

(defclass poppy_msgs::SetTorqueMax
  :super ros::object
  :slots ())

(setf (get poppy_msgs::SetTorqueMax :md5sum-) "38f0e745a4598ee480032418e4d9c65f")
(setf (get poppy_msgs::SetTorqueMax :datatype-) "poppy_msgs/SetTorqueMax")
(setf (get poppy_msgs::SetTorqueMax :request) poppy_msgs::SetTorqueMaxRequest)
(setf (get poppy_msgs::SetTorqueMax :response) poppy_msgs::SetTorqueMaxResponse)

(defmethod poppy_msgs::SetTorqueMaxRequest
  (:response () (instance poppy_msgs::SetTorqueMaxResponse :init)))

(setf (get poppy_msgs::SetTorqueMaxRequest :md5sum-) "38f0e745a4598ee480032418e4d9c65f")
(setf (get poppy_msgs::SetTorqueMaxRequest :datatype-) "poppy_msgs/SetTorqueMaxRequest")
(setf (get poppy_msgs::SetTorqueMaxRequest :definition-)
      "string[] joint_names
float32[] max_torques
---
")

(setf (get poppy_msgs::SetTorqueMaxResponse :md5sum-) "38f0e745a4598ee480032418e4d9c65f")
(setf (get poppy_msgs::SetTorqueMaxResponse :datatype-) "poppy_msgs/SetTorqueMaxResponse")
(setf (get poppy_msgs::SetTorqueMaxResponse :definition-)
      "string[] joint_names
float32[] max_torques
---
")



(provide :poppy_msgs/SetTorqueMax "38f0e745a4598ee480032418e4d9c65f")


