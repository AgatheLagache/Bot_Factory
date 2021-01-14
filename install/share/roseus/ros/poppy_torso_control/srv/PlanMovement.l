;; Auto-generated. Do not edit!


(when (boundp 'poppy_torso_control::PlanMovement)
  (if (not (find-package "POPPY_TORSO_CONTROL"))
    (make-package "POPPY_TORSO_CONTROL"))
  (shadow 'PlanMovement (find-package "POPPY_TORSO_CONTROL")))
(unless (find-package "POPPY_TORSO_CONTROL::PLANMOVEMENT")
  (make-package "POPPY_TORSO_CONTROL::PLANMOVEMENT"))
(unless (find-package "POPPY_TORSO_CONTROL::PLANMOVEMENTREQUEST")
  (make-package "POPPY_TORSO_CONTROL::PLANMOVEMENTREQUEST"))
(unless (find-package "POPPY_TORSO_CONTROL::PLANMOVEMENTRESPONSE")
  (make-package "POPPY_TORSO_CONTROL::PLANMOVEMENTRESPONSE"))

(in-package "ROS")





(defclass poppy_torso_control::PlanMovementRequest
  :super ros::object
  :slots (_group _rand_start _current_start _start_pos _rand_target _target_pos _execute _wait _ret_plan _ret_fps ))

(defmethod poppy_torso_control::PlanMovementRequest
  (:init
   (&key
    ((:group __group) "")
    ((:rand_start __rand_start) nil)
    ((:current_start __current_start) nil)
    ((:start_pos __start_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rand_target __rand_target) nil)
    ((:target_pos __target_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:execute __execute) nil)
    ((:wait __wait) nil)
    ((:ret_plan __ret_plan) nil)
    ((:ret_fps __ret_fps) 0)
    )
   (send-super :init)
   (setq _group (string __group))
   (setq _rand_start __rand_start)
   (setq _current_start __current_start)
   (setq _start_pos __start_pos)
   (setq _rand_target __rand_target)
   (setq _target_pos __target_pos)
   (setq _execute __execute)
   (setq _wait __wait)
   (setq _ret_plan __ret_plan)
   (setq _ret_fps (round __ret_fps))
   self)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:rand_start
   (&optional (__rand_start :null))
   (if (not (eq __rand_start :null)) (setq _rand_start __rand_start)) _rand_start)
  (:current_start
   (&optional (__current_start :null))
   (if (not (eq __current_start :null)) (setq _current_start __current_start)) _current_start)
  (:start_pos
   (&optional __start_pos)
   (if __start_pos (setq _start_pos __start_pos)) _start_pos)
  (:rand_target
   (&optional (__rand_target :null))
   (if (not (eq __rand_target :null)) (setq _rand_target __rand_target)) _rand_target)
  (:target_pos
   (&optional __target_pos)
   (if __target_pos (setq _target_pos __target_pos)) _target_pos)
  (:execute
   (&optional (__execute :null))
   (if (not (eq __execute :null)) (setq _execute __execute)) _execute)
  (:wait
   (&optional (__wait :null))
   (if (not (eq __wait :null)) (setq _wait __wait)) _wait)
  (:ret_plan
   (&optional (__ret_plan :null))
   (if (not (eq __ret_plan :null)) (setq _ret_plan __ret_plan)) _ret_plan)
  (:ret_fps
   (&optional __ret_fps)
   (if __ret_fps (setq _ret_fps __ret_fps)) _ret_fps)
  (:serialization-length
   ()
   (+
    ;; string _group
    4 (length _group)
    ;; bool _rand_start
    1
    ;; bool _current_start
    1
    ;; float32[] _start_pos
    (* 4    (length _start_pos)) 4
    ;; bool _rand_target
    1
    ;; float32[] _target_pos
    (* 4    (length _target_pos)) 4
    ;; bool _execute
    1
    ;; bool _wait
    1
    ;; bool _ret_plan
    1
    ;; int8 _ret_fps
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; bool _rand_start
       (if _rand_start (write-byte -1 s) (write-byte 0 s))
     ;; bool _current_start
       (if _current_start (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _start_pos
     (write-long (length _start_pos) s)
     (dotimes (i (length _start_pos))
       (sys::poke (elt _start_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _rand_target
       (if _rand_target (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _target_pos
     (write-long (length _target_pos) s)
     (dotimes (i (length _target_pos))
       (sys::poke (elt _target_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _execute
       (if _execute (write-byte -1 s) (write-byte 0 s))
     ;; bool _wait
       (if _wait (write-byte -1 s) (write-byte 0 s))
     ;; bool _ret_plan
       (if _ret_plan (write-byte -1 s) (write-byte 0 s))
     ;; int8 _ret_fps
       (write-byte _ret_fps s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _rand_start
     (setq _rand_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _current_start
     (setq _current_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _start_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _rand_target
     (setq _rand_target (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _target_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _execute
     (setq _execute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wait
     (setq _wait (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ret_plan
     (setq _ret_plan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _ret_fps
     (setq _ret_fps (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ret_fps 127) (setq _ret_fps (- _ret_fps 256)))
   ;;
   self)
  )

(defclass poppy_torso_control::PlanMovementResponse
  :super ros::object
  :slots (_error _start_pos _target_pos _plans ))

(defmethod poppy_torso_control::PlanMovementResponse
  (:init
   (&key
    ((:error __error) 0)
    ((:start_pos __start_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_pos __target_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plans __plans) ())
    )
   (send-super :init)
   (setq _error (round __error))
   (setq _start_pos __start_pos)
   (setq _target_pos __target_pos)
   (setq _plans __plans)
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
  (:plans
   (&rest __plans)
   (if (keywordp (car __plans))
       (send* _plans __plans)
     (progn
       (if __plans (setq _plans (car __plans)))
       _plans)))
  (:serialization-length
   ()
   (+
    ;; int8 _error
    1
    ;; float32[] _start_pos
    (* 4    (length _start_pos)) 4
    ;; float32[] _target_pos
    (* 4    (length _target_pos)) 4
    ;; poppy_torso_control/Trajectory[] _plans
    (apply #'+ (send-all _plans :serialization-length)) 4
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
     ;; poppy_torso_control/Trajectory[] _plans
     (write-long (length _plans) s)
     (dolist (elem _plans)
       (send elem :serialize s)
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
   ;; poppy_torso_control/Trajectory[] _plans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plans (let (r) (dotimes (i n) (push (instance poppy_torso_control::Trajectory :init) r)) r))
     (dolist (elem- _plans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass poppy_torso_control::PlanMovement
  :super ros::object
  :slots ())

(setf (get poppy_torso_control::PlanMovement :md5sum-) "739716dc3ed3bb73b035e54b77eee141")
(setf (get poppy_torso_control::PlanMovement :datatype-) "poppy_torso_control/PlanMovement")
(setf (get poppy_torso_control::PlanMovement :request) poppy_torso_control::PlanMovementRequest)
(setf (get poppy_torso_control::PlanMovement :response) poppy_torso_control::PlanMovementResponse)

(defmethod poppy_torso_control::PlanMovementRequest
  (:response () (instance poppy_torso_control::PlanMovementResponse :init)))

(setf (get poppy_torso_control::PlanMovementRequest :md5sum-) "739716dc3ed3bb73b035e54b77eee141")
(setf (get poppy_torso_control::PlanMovementRequest :datatype-) "poppy_torso_control/PlanMovementRequest")
(setf (get poppy_torso_control::PlanMovementRequest :definition-)
      "string          group
bool            rand_start
bool            current_start
float32[]       start_pos
bool            rand_target
float32[]       target_pos
bool            execute
bool            wait
bool            ret_plan
int8            ret_fps
---
int8            error
float32[]       start_pos
float32[]       target_pos
Trajectory[]    plans

================================================================================
MSG: poppy_torso_control/Trajectory
# This message stores a movement
#
# * joint: name of the joint
#
# * trajectory: array of positions
#

string      joint
")

(setf (get poppy_torso_control::PlanMovementResponse :md5sum-) "739716dc3ed3bb73b035e54b77eee141")
(setf (get poppy_torso_control::PlanMovementResponse :datatype-) "poppy_torso_control/PlanMovementResponse")
(setf (get poppy_torso_control::PlanMovementResponse :definition-)
      "string          group
bool            rand_start
bool            current_start
float32[]       start_pos
bool            rand_target
float32[]       target_pos
bool            execute
bool            wait
bool            ret_plan
int8            ret_fps
---
int8            error
float32[]       start_pos
float32[]       target_pos
Trajectory[]    plans

================================================================================
MSG: poppy_torso_control/Trajectory
# This message stores a movement
#
# * joint: name of the joint
#
# * trajectory: array of positions
#

string      joint
")



(provide :poppy_torso_control/PlanMovement "739716dc3ed3bb73b035e54b77eee141")


