#!/usr/bin/env python3

import rospy
import time
from moveit_commander.move_group import MoveGroupCommander
import geometry_msgs.msg
from geometry_msgs.msg import Pose, Quaternion
from math import radians, cos, sin
import tf_conversions as transform
from std_srvs.srv import SetBool
from production_chain.srv import ErgoControl, ErgoControlResponse

def rotate_to(req):
#	rospy.init_node('ergo_node')
	print("\tgoing to z: %f yaw: %f offset: %f"%(req.z, req.y, req.offset))
	commander = MoveGroupCommander("arm")
	pose = geometry_msgs.msg.Pose()
	pose.orientation = Quaternion(*transform.transformations.quaternion_from_euler(radians(req.r), radians(req.p), radians(req.y)))
	pose.position.x = cos(radians(req.y - 90)) * req.offset
	pose.position.y = sin(radians(req.y - 90)) * req.offset
	pose.position.z = req.z

	commander.set_pose_target(pose)
	plan = commander.go(wait=True)
	commander.stop()
	commander.clear_pose_targets()
	return ErgoControlResponse(plan)

def rotate_to_server():
	rospy.init_node('rotate_to_server')
	s = rospy.Service('ergo_control', ErgoControl, rotate_to)
	rospy.spin()

if __name__ == "__main__":
	rotate_to_server()

