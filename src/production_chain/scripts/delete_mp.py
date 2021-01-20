#!/usr/bin/python3

import rospy
from moveit_commander.move_group import MoveGroupCommander
from geometry_msgs.msg import Pose
from math import radians, cos, sin
from gazebo_msgs.srv import SpawnModel, DeleteModel, DeleteModelRequest


colors = ['Blue', 'Red', 'Green', 'Purple']

 
srv = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)

req = DeleteModelRequest()

for x in colors:
    for y in range(3):
    
      req.model_name = "mp"+x+str(y)
      resp = srv(req)

      if resp.success:
          print(resp.status_message, '(%s)' % x)

      else:
          print("failed to delete model [%s]" %x)


