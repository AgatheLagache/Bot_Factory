
(cl:in-package :asdf)

(defsystem "poppy_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "ExecuteTrajectory" :depends-on ("_package_ExecuteTrajectory"))
    (:file "_package_ExecuteTrajectory" :depends-on ("_package"))
    (:file "ReachTarget" :depends-on ("_package_ReachTarget"))
    (:file "_package_ReachTarget" :depends-on ("_package"))
    (:file "SetCompliant" :depends-on ("_package_SetCompliant"))
    (:file "_package_SetCompliant" :depends-on ("_package"))
    (:file "SetIdleMotion" :depends-on ("_package_SetIdleMotion"))
    (:file "_package_SetIdleMotion" :depends-on ("_package"))
    (:file "SetTorqueMax" :depends-on ("_package_SetTorqueMax"))
    (:file "_package_SetTorqueMax" :depends-on ("_package"))
  ))