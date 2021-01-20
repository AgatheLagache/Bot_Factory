#!/usr/bin/env python3

import rospy
import time
from moveit_commander.move_group import MoveGroupCommander
import geometry_msgs.msg
from geometry_msgs.msg import Pose, Quaternion
from math import radians, cos, sin
import tf_conversions as transform
from std_srvs.srv import SetBool

commander = MoveGroupCommander("arm")

def close_gripper(close):
	rospy.wait_for_service('/ergo_jr/close_gripper')
	try:
		closeGripper = rospy.ServiceProxy('/ergo_jr/close_gripper', SetBool)
		return closeGripper(close)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)

def rotate_to(degree, z):
	current_pose = commander.get_current_pose().pose
	print(current_pose)
	cube_offset = 0.21
	pose = geometry_msgs.msg.Pose()
	pose.orientation = Quaternion(*transform.transformations.quaternion_from_euler(0, 0, radians(degree)))
	pose.position.x = cos(radians(degree - 90)) * cube_offset
	pose.position.y = sin(radians(degree - 90)) * cube_offset
	pose.position.z = z

	commander.set_pose_target(pose) #envoie la pose au commander
	plan = commander.go(wait=True) #éxécute le mouvement avec attente
	commander.stop() #force l'arrêt du mouvement pour plus de sécurité
	commander.clear_pose_targets() #force le nettoyage des objectifs du commander pour plus de sécurité

def main():
	rospy.init_node('ergo_node')

	rotate_to(0, 0.2) #

#	close_gripper(False)
	rotate_to(25, 0.1) # TODO: obstacles
	rotate_to(25, 0.02)
#	close_gripper(True)
	rotate_to(25, 0.1)#

#	time.sleep(2)

#	rotate_to(90, 0.02)#
#	close_gripper(False)
#	rotate_to(90, 0.1) # TODO: obstacles
#	rotate_to(0, 0.20)#
#	close_gripper(True)

if __name__ == "__main__":
	main()

