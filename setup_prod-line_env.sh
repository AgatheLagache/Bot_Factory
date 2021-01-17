#!/bin/sh

rm -rf build/ devel/

#set environment variables
. /opt/ros/noetic/setup.sh

. /usr/share/gazebo/setup.sh

#export GAZEBO_MODEL_PATH=/home/martin/Documents/ProjetRobotique/gazebo_models_worlds_collection/models:${GAZEBO_MODEL_PATH}

#export GAZEBO_RESOURCE_PATH=/home/martin/Documents/ProjetRobotique/gazebo_models_worlds_collection/worlds:${GAZEBO_RESOURCE_PATH}

catkin_make

. ./devel/setup.sh
roslaunch production_chain production_line.launch

