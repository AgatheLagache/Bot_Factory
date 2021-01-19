#!/usr/bin/python3

import rospy
from geometry_msgs.msg import Pose
from gazebo_msgs.srv import SpawnModel, SpawnModelRequest
import tf_conversions as transform
from lxml import etree, objectify
import sys
from math import radians


def build_gz_figurine_req(name, frame_id, x, y, z, roll, pitch, yaw, width, height, depth, mass, color):
    """
    create the gazebo SpawnModel service request for a figurine
    """

    p = Pose()
    p.position.x = x
    p.position.y = y
    p.position.z = z
    q = transform.transformations.quaternion_from_euler(roll, pitch, yaw)
    p.orientation.x = q[0]
    p.orientation.y = q[1]
    p.orientation.z = q[2]
    p.orientation.w = q[3]

    model = SpawnModelRequest()
    model.model_name = name

    sdf = objectify.Element('sdf', version='1.4')
    sdf.model = objectify.Element('model', name=name)
    sdf.model.static = 'true'
    sdf.model.link = objectify.Element('link', name='link')
    sdf.model.link.inertial = objectify.Element('inertial')
    sdf.model.link.inertial.mass = mass
    xx = mass/12.0*(height*height+depth*depth)
    yy = mass/12.0*(width*width+depth*depth)
    zz = mass/12.0*(width*width+height*height)

    sdf.model.link.inertial.inertia = objectify.Element('inertia')
    sdf.model.link.inertial.inertia.ixx = xx
    sdf.model.link.inertial.inertia.iyy = yy
    sdf.model.link.inertial.inertia.izz = zz
    sdf.model.link.inertial.inertia.ixy = 0.0
    sdf.model.link.inertial.inertia.iyz = 0.0
    sdf.model.link.inertial.inertia.ixz = 0.0

    sdf.model.link.collision = objectify.Element('collision', name='collision')
    sdf.model.link.collision.geometry = objectify.Element('geometry')
    sdf.model.link.collision.geometry.box = objectify.Element('box')

    sdf.model.link.collision.geometry.box.size = '{} {} {}'.format(
        width, height, depth)

    sdf.model.link.collision.surface = objectify.Element('surface')
    sdf.model.link.collision.surface.friction = objectify.Element('friction')
    sdf.model.link.collision.surface.friction.ode = objectify.Element('ode')
    sdf.model.link.collision.surface.friction.ode.mu = 1000000
    sdf.model.link.collision.surface.friction.ode.mu2 = 1000000
    sdf.model.link.collision.surface.friction.ode.fdir1 = '1.0 1.0 1.0'
    sdf.model.link.collision.surface.friction.ode.slip1 = 0.0
    sdf.model.link.collision.surface.friction.ode.slip2 = 0.0
    sdf.model.link.collision.surface.bounce = objectify.Element('bounce')
    sdf.model.link.collision.surface.bounce.restitution_coefficient = 0.0
    sdf.model.link.collision.surface.bounce.threshold = 100000.0
    sdf.model.link.collision.surface.contact = objectify.Element('contact')
    sdf.model.link.collision.surface.contact.ode = objectify.Element('ode')
    sdf.model.link.collision.surface.contact.ode.soft_cfm = 0.0
    sdf.model.link.collision.surface.contact.ode.soft_erp = 0.2
    sdf.model.link.collision.surface.contact.ode.kp = 10000000
    sdf.model.link.collision.surface.contact.ode.kd = 1
    sdf.model.link.collision.surface.contact.ode.max_vel = 0.0
    sdf.model.link.collision.surface.contact.ode.min_depth = 0.001

    sdf.model.link.visual = objectify.Element('visual', name='visual')
    sdf.model.link.visual.geometry = objectify.Element('geometry')
    sdf.model.link.visual.geometry.box = objectify.Element('box')
    sdf.model.link.visual.geometry.box.size = '{} {} {}'.format(
        width, height, depth)
    sdf.model.link.visual.material = objectify.Element('material')
    sdf.model.link.visual.material.script = objectify.Element('script')
    sdf.model.link.visual.material.script = objectify.Element('script')
    sdf.model.link.visual.material.script.uri = 'file://media/materials/scripts/gazebo.material'
    sdf.model.link.visual.material.script.name = 'Gazebo/{}'.format(color)
    objectify.deannotate(sdf)
    etree.cleanup_namespaces(sdf)
    model.model_xml = (etree.tostring(
        sdf, encoding='utf-8', xml_declaration=True)).decode("utf-8")

    model.robot_namespace = "figurine_spawner"
    model.initial_pose = p
    model.reference_frame = frame_id

    # return etree.tostring(sdf, encoding='utf-8', xml_declaration=True)
    return model

def spawn_mps():

    name = 'mp'
    frame = 'world'
    y = 0.12
    x = -0.17
    z = 0.06

    width = 0.02
    height = 0.02
    depth = 0.02

    roll = 0
    pitch = 0
    yaw = -45

    mass = 0.01
    colors = ['Blue', 'Red', 'Green', 'Purple']
    
    
    for j in range(3):
    
      zi = z
    
      if j == 2:
        width = 0.01
        height = 0.015
        depth = 0.020
      if j == 1:
        width = 0.01
        height = 0.01
        depth = 0.01
        zi -= 0.005
      
      for i in range(4):
      
        nm = name + colors[i] + str(j)
        xi = x
        yi = y
        
        if i == 0:
          xi = x
          yi = y
        elif i == 1:
          xi = x + 0.05
          yi = y
        elif i == 2:
          xi = x
          yi = y + 0.05 
        else:
          xi = x + 0.05
          yi = y + 0.05

        if j==1:
          yi += 0.07

        spawn(build_gz_figurine_req(nm, frame, xi, yi, zi, roll, pitch, yaw, width, height, depth, mass, colors[i]))

      x+=0.15
      yaw += 45
        

    return 0


if __name__ == '__main__':
    rospy.init_node('figurine_spawner', anonymous=True)

    name = 'figurine'
    frame = 'world'
    x = 0.0
    y = 0.0
    z = 0.0

    width = 0.02
    height = 0.02
    depth = 0.02

    roll = 0
    pitch = 0
    yaw = 0

    mass = 0.01
    color = 'Blue'

    rospy.wait_for_service('gazebo/spawn_sdf_model')
    spawn = rospy.ServiceProxy('gazebo/spawn_sdf_model', SpawnModel)
    try:
        spawn_mps()
#        resp1 = spawn(build_gz_figurine_req(name, frame, x, y, z, roll,
#                                        pitch, yaw, width, height, depth, mass, color))
        rospy.loginfo('Figurine {} spawned {} {} {} {} {} {}'.format(
            name, x, y, z, roll, pitch, yaw))
    except rospy.ServiceException as exc:
        rospy.logerr("Service did not process request: " + str(exc))
