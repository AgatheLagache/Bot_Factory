;; Auto-generated. Do not edit!


(when (boundp 'poppy_msgs::SetIdleMotion)
  (if (not (find-package "POPPY_MSGS"))
    (make-package "POPPY_MSGS"))
  (shadow 'SetIdleMotion (find-package "POPPY_MSGS")))
(unless (find-package "POPPY_MSGS::SETIDLEMOTION")
  (make-package "POPPY_MSGS::SETIDLEMOTION"))
(unless (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST")
  (make-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(unless (find-package "POPPY_MSGS::SETIDLEMOTIONRESPONSE")
  (make-package "POPPY_MSGS::SETIDLEMOTIONRESPONSE"))

(in-package "ROS")





(intern "*COMMAND_START*" (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(shadow '*COMMAND_START* (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(defconstant poppy_msgs::SetIdleMotionRequest::*COMMAND_START* 1)
(intern "*COMMAND_STOP*" (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(shadow '*COMMAND_STOP* (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(defconstant poppy_msgs::SetIdleMotionRequest::*COMMAND_STOP* 0)
(intern "*COMMAND_PAUSE*" (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(shadow '*COMMAND_PAUSE* (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(defconstant poppy_msgs::SetIdleMotionRequest::*COMMAND_PAUSE* 2)
(intern "*COMMAND_RESUME*" (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(shadow '*COMMAND_RESUME* (find-package "POPPY_MSGS::SETIDLEMOTIONREQUEST"))
(defconstant poppy_msgs::SetIdleMotionRequest::*COMMAND_RESUME* 3)

(defun poppy_msgs::SetIdleMotionRequest-to-symbol (const)
  (cond
        ((= const 1) 'poppy_msgs::SetIdleMotionRequest::*COMMAND_START*)
        ((= const 0) 'poppy_msgs::SetIdleMotionRequest::*COMMAND_STOP*)
        ((= const 2) 'poppy_msgs::SetIdleMotionRequest::*COMMAND_PAUSE*)
        ((= const 3) 'poppy_msgs::SetIdleMotionRequest::*COMMAND_RESUME*)
        (t nil)))

(defclass poppy_msgs::SetIdleMotionRequest
  :super ros::object
  :slots (_command ))

(defmethod poppy_msgs::SetIdleMotionRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass poppy_msgs::SetIdleMotionResponse
  :super ros::object
  :slots ())

(defmethod poppy_msgs::SetIdleMotionResponse
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

(defclass poppy_msgs::SetIdleMotion
  :super ros::object
  :slots ())

(setf (get poppy_msgs::SetIdleMotion :md5sum-) "8be1c25e78be3492319574e465362b18")
(setf (get poppy_msgs::SetIdleMotion :datatype-) "poppy_msgs/SetIdleMotion")
(setf (get poppy_msgs::SetIdleMotion :request) poppy_msgs::SetIdleMotionRequest)
(setf (get poppy_msgs::SetIdleMotion :response) poppy_msgs::SetIdleMotionResponse)

(defmethod poppy_msgs::SetIdleMotionRequest
  (:response () (instance poppy_msgs::SetIdleMotionResponse :init)))

(setf (get poppy_msgs::SetIdleMotionRequest :md5sum-) "8be1c25e78be3492319574e465362b18")
(setf (get poppy_msgs::SetIdleMotionRequest :datatype-) "poppy_msgs/SetIdleMotionRequest")
(setf (get poppy_msgs::SetIdleMotionRequest :definition-)
      "uint8 COMMAND_START = 1
uint8 COMMAND_STOP = 0
uint8 COMMAND_PAUSE = 2
uint8 COMMAND_RESUME = 3

uint8 command
---

")

(setf (get poppy_msgs::SetIdleMotionResponse :md5sum-) "8be1c25e78be3492319574e465362b18")
(setf (get poppy_msgs::SetIdleMotionResponse :datatype-) "poppy_msgs/SetIdleMotionResponse")
(setf (get poppy_msgs::SetIdleMotionResponse :definition-)
      "uint8 COMMAND_START = 1
uint8 COMMAND_STOP = 0
uint8 COMMAND_PAUSE = 2
uint8 COMMAND_RESUME = 3

uint8 command
---

")



(provide :poppy_msgs/SetIdleMotion "8be1c25e78be3492319574e465362b18")


