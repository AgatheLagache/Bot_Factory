#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from moveit_commander.move_group import MoveGroupCommander
from geometry_msgs.msg import Pose
from math import radians, cos, sin
import tf_conversions as transform

rospy.init_node("test_sub")

commander = MoveGroupCommander("l_arm")
print(commander.get_current_joint_values())
cp = Pose()

cp.position.x = 0.000
cp.position.y = -0.006
cp.position.z = 0.273

cp.orientation.x = 0.7366
cp.orientation.y = 0.0067
cp.orientation.z = 0.0066
cp.orientation.w = 0.6762

joints = commander.get_current_joint_values()

# r_shoulder_y; r_shoulder_x; r_arm_z; r_elbow_y
joints = [0,0,0,0]


#commander.set_joint_value_target(joints)
#print(cp)

#commander.set_orientation_target(cp.orientation)
#commander.set_joint_value_target(cp, True)

#commander.set_pose_target(cp) #envoie la pose au commander
#plan = commander.go(wait=True) #éxécute le mouvement avec attente
commander.stop() #force l'arrêt du mouvement pour plus de sécurité
commander.clear_pose_targets() #force le nettoyage des objectifs du commander pour plus de sécurité

