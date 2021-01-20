#!/bin/sh

dir=$(pwd)
. ${dir}/devel/setup.sh

#todo set relative path from variable
export GAZEBO_MODEL_PATH="${GAZEBO_MODEL_PATH}:${dir}/src/production_chain/models/"

roslaunch poppy_ergo_jr_moveit_config start_moveit.launch


