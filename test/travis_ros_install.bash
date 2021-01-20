#!/bin/bash -xve

#required packages
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg

#ros install 
cd .. 
git clone https://github.com/someonesgarden/ros_setup_melody_server.git
cd ./ros_setup_melody_server
bash ./step0.bash
bash ./step1.bash

source ~/.bashrc

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/melodic/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make

