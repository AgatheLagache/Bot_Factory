;; Auto-generated. Do not edit!


(when (boundp 'poppy_torso_control::CollisionDistance)
  (if (not (find-package "POPPY_TORSO_CONTROL"))
    (make-package "POPPY_TORSO_CONTROL"))
  (shadow 'CollisionDistance (find-package "POPPY_TORSO_CONTROL")))
(unless (find-package "POPPY_TORSO_CONTROL::COLLISIONDISTANCE")
  (make-package "POPPY_TORSO_CONTROL::COLLISIONDISTANCE"))
(unless (find-package "POPPY_TORSO_CONTROL::COLLISIONDISTANCEREQUEST")
  (make-package "POPPY_TORSO_CONTROL::COLLISIONDISTANCEREQUEST"))
(unless (find-package "POPPY_TORSO_CONTROL::COLLISIONDISTANCERESPONSE")
  (make-package "POPPY_TORSO_CONTROL::COLLISIONDISTANCERESPONSE"))

(in-package "ROS")





(defclass poppy_torso_control::CollisionDistanceRequest
  :super ros::object
  :slots (_group _offset _offset_values ))

(defmethod poppy_torso_control::CollisionDistanceRequest
  (:init
   (&key
    ((:group __group) "")
    ((:offset __offset) nil)
    ((:offset_values __offset_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _group (string __group))
   (setq _offset __offset)
   (setq _offset_values __offset_values)
   self)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:offset
   (&optional (__offset :null))
   (if (not (eq __offset :null)) (setq _offset __offset)) _offset)
  (:offset_values
   (&optional __offset_values)
   (if __offset_values (setq _offset_values __offset_values)) _offset_values)
  (:serialization-length
   ()
   (+
    ;; string _group
    4 (length _group)
    ;; bool _offset
    1
    ;; float32[] _offset_values
    (* 4    (length _offset_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; bool _offset
       (if _offset (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _offset_values
     (write-long (length _offset_values) s)
     (dotimes (i (length _offset_values))
       (sys::poke (elt _offset_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _offset
     (setq _offset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _offset_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offset_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _offset_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass poppy_torso_control::CollisionDistanceResponse
  :super ros::object
  :slots (_distance _collision ))

(defmethod poppy_torso_control::CollisionDistanceResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:collision __collision) nil)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _collision __collision)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:collision
   (&optional (__collision :null))
   (if (not (eq __collision :null)) (setq _collision __collision)) _collision)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ;; bool _collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _collision
       (if _collision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _collision
     (setq _collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass poppy_torso_control::CollisionDistance
  :super ros::object
  :slots ())

(setf (get poppy_torso_control::CollisionDistance :md5sum-) "c3379f95c70098db0befc78cb72e972b")
(setf (get poppy_torso_control::CollisionDistance :datatype-) "poppy_torso_control/CollisionDistance")
(setf (get poppy_torso_control::CollisionDistance :request) poppy_torso_control::CollisionDistanceRequest)
(setf (get poppy_torso_control::CollisionDistance :response) poppy_torso_control::CollisionDistanceResponse)

(defmethod poppy_torso_control::CollisionDistanceRequest
  (:response () (instance poppy_torso_control::CollisionDistanceResponse :init)))

(setf (get poppy_torso_control::CollisionDistanceRequest :md5sum-) "c3379f95c70098db0befc78cb72e972b")
(setf (get poppy_torso_control::CollisionDistanceRequest :datatype-) "poppy_torso_control/CollisionDistanceRequest")
(setf (get poppy_torso_control::CollisionDistanceRequest :definition-)
      "string          group
bool            offset
float32[]       offset_values
---
float32         distance
bool            collision
")

(setf (get poppy_torso_control::CollisionDistanceResponse :md5sum-) "c3379f95c70098db0befc78cb72e972b")
(setf (get poppy_torso_control::CollisionDistanceResponse :datatype-) "poppy_torso_control/CollisionDistanceResponse")
(setf (get poppy_torso_control::CollisionDistanceResponse :definition-)
      "string          group
bool            offset
float32[]       offset_values
---
float32         distance
bool            collision
")



(provide :poppy_torso_control/CollisionDistance "c3379f95c70098db0befc78cb72e972b")


