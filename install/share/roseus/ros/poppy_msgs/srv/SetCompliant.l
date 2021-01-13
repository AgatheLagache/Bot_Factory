;; Auto-generated. Do not edit!


(when (boundp 'poppy_msgs::SetCompliant)
  (if (not (find-package "POPPY_MSGS"))
    (make-package "POPPY_MSGS"))
  (shadow 'SetCompliant (find-package "POPPY_MSGS")))
(unless (find-package "POPPY_MSGS::SETCOMPLIANT")
  (make-package "POPPY_MSGS::SETCOMPLIANT"))
(unless (find-package "POPPY_MSGS::SETCOMPLIANTREQUEST")
  (make-package "POPPY_MSGS::SETCOMPLIANTREQUEST"))
(unless (find-package "POPPY_MSGS::SETCOMPLIANTRESPONSE")
  (make-package "POPPY_MSGS::SETCOMPLIANTRESPONSE"))

(in-package "ROS")





(defclass poppy_msgs::SetCompliantRequest
  :super ros::object
  :slots (_compliant ))

(defmethod poppy_msgs::SetCompliantRequest
  (:init
   (&key
    ((:compliant __compliant) nil)
    )
   (send-super :init)
   (setq _compliant __compliant)
   self)
  (:compliant
   (&optional (__compliant :null))
   (if (not (eq __compliant :null)) (setq _compliant __compliant)) _compliant)
  (:serialization-length
   ()
   (+
    ;; bool _compliant
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _compliant
       (if _compliant (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _compliant
     (setq _compliant (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass poppy_msgs::SetCompliantResponse
  :super ros::object
  :slots ())

(defmethod poppy_msgs::SetCompliantResponse
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

(defclass poppy_msgs::SetCompliant
  :super ros::object
  :slots ())

(setf (get poppy_msgs::SetCompliant :md5sum-) "69dee17d63f05f40110dce6a193709a9")
(setf (get poppy_msgs::SetCompliant :datatype-) "poppy_msgs/SetCompliant")
(setf (get poppy_msgs::SetCompliant :request) poppy_msgs::SetCompliantRequest)
(setf (get poppy_msgs::SetCompliant :response) poppy_msgs::SetCompliantResponse)

(defmethod poppy_msgs::SetCompliantRequest
  (:response () (instance poppy_msgs::SetCompliantResponse :init)))

(setf (get poppy_msgs::SetCompliantRequest :md5sum-) "69dee17d63f05f40110dce6a193709a9")
(setf (get poppy_msgs::SetCompliantRequest :datatype-) "poppy_msgs/SetCompliantRequest")
(setf (get poppy_msgs::SetCompliantRequest :definition-)
      "bool compliant
---
")

(setf (get poppy_msgs::SetCompliantResponse :md5sum-) "69dee17d63f05f40110dce6a193709a9")
(setf (get poppy_msgs::SetCompliantResponse :datatype-) "poppy_msgs/SetCompliantResponse")
(setf (get poppy_msgs::SetCompliantResponse :definition-)
      "bool compliant
---
")



(provide :poppy_msgs/SetCompliant "69dee17d63f05f40110dce6a193709a9")


