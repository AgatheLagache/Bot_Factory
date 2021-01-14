;; Auto-generated. Do not edit!


(when (boundp 'poppy_torso_control::ForwardKinematics)
  (if (not (find-package "POPPY_TORSO_CONTROL"))
    (make-package "POPPY_TORSO_CONTROL"))
  (shadow 'ForwardKinematics (find-package "POPPY_TORSO_CONTROL")))
(unless (find-package "POPPY_TORSO_CONTROL::FORWARDKINEMATICS")
  (make-package "POPPY_TORSO_CONTROL::FORWARDKINEMATICS"))
(unless (find-package "POPPY_TORSO_CONTROL::FORWARDKINEMATICSREQUEST")
  (make-package "POPPY_TORSO_CONTROL::FORWARDKINEMATICSREQUEST"))
(unless (find-package "POPPY_TORSO_CONTROL::FORWARDKINEMATICSRESPONSE")
  (make-package "POPPY_TORSO_CONTROL::FORWARDKINEMATICSRESPONSE"))

(in-package "ROS")





(defclass poppy_torso_control::ForwardKinematicsRequest
  :super ros::object
  :slots (_group _joints ))

(defmethod poppy_torso_control::ForwardKinematicsRequest
  (:init
   (&key
    ((:group __group) "")
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _group (string __group))
   (setq _joints __joints)
   self)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; string _group
    4 (length _group)
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass poppy_torso_control::ForwardKinematicsResponse
  :super ros::object
  :slots (_end_pos _error ))

(defmethod poppy_torso_control::ForwardKinematicsResponse
  (:init
   (&key
    ((:end_pos __end_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _end_pos __end_pos)
   (setq _error (round __error))
   self)
  (:end_pos
   (&optional __end_pos)
   (if __end_pos (setq _end_pos __end_pos)) _end_pos)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; float32[] _end_pos
    (* 4    (length _end_pos)) 4
    ;; int8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _end_pos
     (write-long (length _end_pos) s)
     (dotimes (i (length _end_pos))
       (sys::poke (elt _end_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _end_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error 127) (setq _error (- _error 256)))
   ;;
   self)
  )

(defclass poppy_torso_control::ForwardKinematics
  :super ros::object
  :slots ())

(setf (get poppy_torso_control::ForwardKinematics :md5sum-) "fd29b61d63688aceaae9b2f12b8a16ee")
(setf (get poppy_torso_control::ForwardKinematics :datatype-) "poppy_torso_control/ForwardKinematics")
(setf (get poppy_torso_control::ForwardKinematics :request) poppy_torso_control::ForwardKinematicsRequest)
(setf (get poppy_torso_control::ForwardKinematics :response) poppy_torso_control::ForwardKinematicsResponse)

(defmethod poppy_torso_control::ForwardKinematicsRequest
  (:response () (instance poppy_torso_control::ForwardKinematicsResponse :init)))

(setf (get poppy_torso_control::ForwardKinematicsRequest :md5sum-) "fd29b61d63688aceaae9b2f12b8a16ee")
(setf (get poppy_torso_control::ForwardKinematicsRequest :datatype-) "poppy_torso_control/ForwardKinematicsRequest")
(setf (get poppy_torso_control::ForwardKinematicsRequest :definition-)
      "string  group
float32[] joints
---
float32[] end_pos 
int8 error
")

(setf (get poppy_torso_control::ForwardKinematicsResponse :md5sum-) "fd29b61d63688aceaae9b2f12b8a16ee")
(setf (get poppy_torso_control::ForwardKinematicsResponse :datatype-) "poppy_torso_control/ForwardKinematicsResponse")
(setf (get poppy_torso_control::ForwardKinematicsResponse :definition-)
      "string  group
float32[] joints
---
float32[] end_pos 
int8 error
")



(provide :poppy_torso_control/ForwardKinematics "fd29b61d63688aceaae9b2f12b8a16ee")


