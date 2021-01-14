;; Auto-generated. Do not edit!


(when (boundp 'poppy_torso_control::GetEndEffectorPos)
  (if (not (find-package "POPPY_TORSO_CONTROL"))
    (make-package "POPPY_TORSO_CONTROL"))
  (shadow 'GetEndEffectorPos (find-package "POPPY_TORSO_CONTROL")))
(unless (find-package "POPPY_TORSO_CONTROL::GETENDEFFECTORPOS")
  (make-package "POPPY_TORSO_CONTROL::GETENDEFFECTORPOS"))
(unless (find-package "POPPY_TORSO_CONTROL::GETENDEFFECTORPOSREQUEST")
  (make-package "POPPY_TORSO_CONTROL::GETENDEFFECTORPOSREQUEST"))
(unless (find-package "POPPY_TORSO_CONTROL::GETENDEFFECTORPOSRESPONSE")
  (make-package "POPPY_TORSO_CONTROL::GETENDEFFECTORPOSRESPONSE"))

(in-package "ROS")





(defclass poppy_torso_control::GetEndEffectorPosRequest
  :super ros::object
  :slots (_group ))

(defmethod poppy_torso_control::GetEndEffectorPosRequest
  (:init
   (&key
    ((:group __group) "")
    )
   (send-super :init)
   (setq _group (string __group))
   self)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:serialization-length
   ()
   (+
    ;; string _group
    4 (length _group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass poppy_torso_control::GetEndEffectorPosResponse
  :super ros::object
  :slots (_xyz ))

(defmethod poppy_torso_control::GetEndEffectorPosResponse
  (:init
   (&key
    ((:xyz __xyz) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _xyz __xyz)
   self)
  (:xyz
   (&optional __xyz)
   (if __xyz (setq _xyz __xyz)) _xyz)
  (:serialization-length
   ()
   (+
    ;; float32[] _xyz
    (* 4    (length _xyz)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _xyz
     (write-long (length _xyz) s)
     (dotimes (i (length _xyz))
       (sys::poke (elt _xyz i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _xyz
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xyz (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xyz i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass poppy_torso_control::GetEndEffectorPos
  :super ros::object
  :slots ())

(setf (get poppy_torso_control::GetEndEffectorPos :md5sum-) "d8748f63ec08641b4cee5181223ababf")
(setf (get poppy_torso_control::GetEndEffectorPos :datatype-) "poppy_torso_control/GetEndEffectorPos")
(setf (get poppy_torso_control::GetEndEffectorPos :request) poppy_torso_control::GetEndEffectorPosRequest)
(setf (get poppy_torso_control::GetEndEffectorPos :response) poppy_torso_control::GetEndEffectorPosResponse)

(defmethod poppy_torso_control::GetEndEffectorPosRequest
  (:response () (instance poppy_torso_control::GetEndEffectorPosResponse :init)))

(setf (get poppy_torso_control::GetEndEffectorPosRequest :md5sum-) "d8748f63ec08641b4cee5181223ababf")
(setf (get poppy_torso_control::GetEndEffectorPosRequest :datatype-) "poppy_torso_control/GetEndEffectorPosRequest")
(setf (get poppy_torso_control::GetEndEffectorPosRequest :definition-)
      "string group
---
float32[] xyz

")

(setf (get poppy_torso_control::GetEndEffectorPosResponse :md5sum-) "d8748f63ec08641b4cee5181223ababf")
(setf (get poppy_torso_control::GetEndEffectorPosResponse :datatype-) "poppy_torso_control/GetEndEffectorPosResponse")
(setf (get poppy_torso_control::GetEndEffectorPosResponse :definition-)
      "string group
---
float32[] xyz

")



(provide :poppy_torso_control/GetEndEffectorPos "d8748f63ec08641b4cee5181223ababf")


