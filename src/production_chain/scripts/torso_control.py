#!/usr/bin/env python3

import rospy
import time
from moveit_commander.move_group import MoveGroupCommander
import geometry_msgs.msg
from geometry_msgs.msg import Pose, Quaternion
from math import radians, cos, sin
import tf_conversions as transform
from production_chain.srv import TorsoControl, TorsoControlResponse

def rotate_to(req):
	commander = MoveGroupCommander(req.group)
	pose = geometry_msgs.msg.Pose()
	pose.orientation.x = req.r
	pose.orientation.y = req.p
	pose.orientation.z = req.yaw
	pose.orientation.w = req.w
	pose.position.x = req.x
	pose.position.y = req.y
	pose.position.z = req.z

	commander.set_joint_value_target(pose, True)
	plan = commander.go(wait=True)
	commander.stop()
	commander.clear_pose_targets()
	return TorsoControlResponse(plan)

def rotate_to_server():
	rospy.init_node('rotate_to__torso_server')
	s = rospy.Service('torso_control', TorsoControl, rotate_to)
	rospy.spin()

if __name__ == "__main__":
	rotate_to_server()

