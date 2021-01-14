;; Auto-generated. Do not edit!


(when (boundp 'poppy_torso_control::OffsetMovement)
  (if (not (find-package "POPPY_TORSO_CONTROL"))
    (make-package "POPPY_TORSO_CONTROL"))
  (shadow 'OffsetMovement (find-package "POPPY_TORSO_CONTROL")))
(unless (find-package "POPPY_TORSO_CONTROL::OFFSETMOVEMENT")
  (make-package "POPPY_TORSO_CONTROL::OFFSETMOVEMENT"))
(unless (find-package "POPPY_TORSO_CONTROL::OFFSETMOVEMENTREQUEST")
  (make-package "POPPY_TORSO_CONTROL::OFFSETMOVEMENTREQUEST"))
(unless (find-package "POPPY_TORSO_CONTROL::OFFSETMOVEMENTRESPONSE")
  (make-package "POPPY_TORSO_CONTROL::OFFSETMOVEMENTRESPONSE"))

(in-package "ROS")





(defclass poppy_torso_control::OffsetMovementRequest
  :super ros::object
  :slots (_group _offset _execute _wait ))

(defmethod poppy_torso_control::OffsetMovementRequest
  (:init
   (&key
    ((:group __group) "")
    ((:offset __offset) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:execute __execute) nil)
    ((:wait __wait) nil)
    )
   (send-super :init)
   (setq _group (string __group))
   (setq _offset __offset)
   (setq _execute __execute)
   (setq _wait __wait)
   self)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:execute
   (&optional (__execute :null))
   (if (not (eq __execute :null)) (setq _execute __execute)) _execute)
  (:wait
   (&optional (__wait :null))
   (if (not (eq __wait :null)) (setq _wait __wait)) _wait)
  (:serialization-length
   ()
   (+
    ;; string _group
    4 (length _group)
    ;; float32[] _offset
    (* 4    (length _offset)) 4
    ;; bool _execute
    1
    ;; bool _wait
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; float32[] _offset
     (write-long (length _offset) s)
     (dotimes (i (length _offset))
       (sys::poke (elt _offset i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _execute
       (if _execute (write-byte -1 s) (write-byte 0 s))
     ;; bool _wait
       (if _wait (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _offset
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offset (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _offset i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _execute
     (setq _execute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wait
     (setq _wait (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass poppy_torso_control::OffsetMovementResponse
  :super ros::object
  :slots (_error _start_pos _target_pos ))

(defmethod poppy_torso_control::OffsetMovementResponse
  (:init
   (&key
    ((:error __error) 0)
    ((:start_pos __start_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_pos __target_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _error (round __error))
   (setq _start_pos __start_pos)
   (setq _target_pos __target_pos)
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:start_pos
   (&optional __start_pos)
   (if __start_pos (setq _start_pos __start_pos)) _start_pos)
  (:target_pos
   (&optional __target_pos)
   (if __target_pos (setq _target_pos __target_pos)) _target_pos)
  (:serialization-length
   ()
   (+
    ;; int8 _error
    1
    ;; float32[] _start_pos
    (* 4    (length _start_pos)) 4
    ;; float32[] _target_pos
    (* 4    (length _target_pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _error
       (write-byte _error s)
     ;; float32[] _start_pos
     (write-long (length _start_pos) s)
     (dotimes (i (length _start_pos))
       (sys::poke (elt _start_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _target_pos
     (write-long (length _target_pos) s)
     (dotimes (i (length _target_pos))
       (sys::poke (elt _target_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error 127) (setq _error (- _error 256)))
   ;; float32[] _start_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _target_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass poppy_torso_control::OffsetMovement
  :super ros::object
  :slots ())

(setf (get poppy_torso_control::OffsetMovement :md5sum-) "952c1ced12c3623ff08e433209bdfd8a")
(setf (get poppy_torso_control::OffsetMovement :datatype-) "poppy_torso_control/OffsetMovement")
(setf (get poppy_torso_control::OffsetMovement :request) poppy_torso_control::OffsetMovementRequest)
(setf (get poppy_torso_control::OffsetMovement :response) poppy_torso_control::OffsetMovementResponse)

(defmethod poppy_torso_control::OffsetMovementRequest
  (:response () (instance poppy_torso_control::OffsetMovementResponse :init)))

(setf (get poppy_torso_control::OffsetMovementRequest :md5sum-) "952c1ced12c3623ff08e433209bdfd8a")
(setf (get poppy_torso_control::OffsetMovementRequest :datatype-) "poppy_torso_control/OffsetMovementRequest")
(setf (get poppy_torso_control::OffsetMovementRequest :definition-)
      "string          group
float32[]       offset
bool            execute
bool            wait
---
int8            error
float32[]       start_pos
float32[]       target_pos
")

(setf (get poppy_torso_control::OffsetMovementResponse :md5sum-) "952c1ced12c3623ff08e433209bdfd8a")
(setf (get poppy_torso_control::OffsetMovementResponse :datatype-) "poppy_torso_control/OffsetMovementResponse")
(setf (get poppy_torso_control::OffsetMovementResponse :definition-)
      "string          group
float32[]       offset
bool            execute
bool            wait
---
int8            error
float32[]       start_pos
float32[]       target_pos
")



(provide :poppy_torso_control/OffsetMovement "952c1ced12c3623ff08e433209bdfd8a")


