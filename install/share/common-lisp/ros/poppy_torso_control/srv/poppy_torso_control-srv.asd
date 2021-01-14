
(cl:in-package :asdf)

(defsystem "poppy_torso_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :poppy_torso_control-msg
)
  :components ((:file "_package")
    (:file "CollisionDistance" :depends-on ("_package_CollisionDistance"))
    (:file "_package_CollisionDistance" :depends-on ("_package"))
    (:file "ForwardKinematics" :depends-on ("_package_ForwardKinematics"))
    (:file "_package_ForwardKinematics" :depends-on ("_package"))
    (:file "GetEndEffectorPos" :depends-on ("_package_GetEndEffectorPos"))
    (:file "_package_GetEndEffectorPos" :depends-on ("_package"))
    (:file "OffsetMovement" :depends-on ("_package_OffsetMovement"))
    (:file "_package_OffsetMovement" :depends-on ("_package"))
    (:file "PlanMovement" :depends-on ("_package_PlanMovement"))
    (:file "_package_PlanMovement" :depends-on ("_package"))
  ))