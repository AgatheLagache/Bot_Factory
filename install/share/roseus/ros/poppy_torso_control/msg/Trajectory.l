;; Auto-generated. Do not edit!


(when (boundp 'poppy_torso_control::Trajectory)
  (if (not (find-package "POPPY_TORSO_CONTROL"))
    (make-package "POPPY_TORSO_CONTROL"))
  (shadow 'Trajectory (find-package "POPPY_TORSO_CONTROL")))
(unless (find-package "POPPY_TORSO_CONTROL::TRAJECTORY")
  (make-package "POPPY_TORSO_CONTROL::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass poppy_torso_control::Trajectory
  :super ros::object
  :slots (_joint _trajectory ))

(defmethod poppy_torso_control::Trajectory
  (:init
   (&key
    ((:joint __joint) "")
    ((:trajectory __trajectory) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint (string __joint))
   (setq _trajectory __trajectory)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:trajectory
   (&optional __trajectory)
   (if __trajectory (setq _trajectory __trajectory)) _trajectory)
  (:serialization-length
   ()
   (+
    ;; string _joint
    4 (length _joint)
    ;; float32[] _trajectory
    (* 4    (length _trajectory)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; float32[] _trajectory
     (write-long (length _trajectory) s)
     (dotimes (i (length _trajectory))
       (sys::poke (elt _trajectory i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trajectory i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get poppy_torso_control::Trajectory :md5sum-) "f9c563b07037ba675f2a0bd3d6032028")
(setf (get poppy_torso_control::Trajectory :datatype-) "poppy_torso_control/Trajectory")
(setf (get poppy_torso_control::Trajectory :definition-)
      "# This message stores a movement
#
# * joint: name of the joint
#
# * trajectory: array of positions
#

string      joint
float32[]   trajectory
")



(provide :poppy_torso_control/Trajectory "f9c563b07037ba675f2a0bd3d6032028")


