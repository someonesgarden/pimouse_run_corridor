#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/
#rsync -av ./ ~/catkin_ws/src/pimouse_ros/

cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/someonesgarden/pimouse_ros.git

cd ~/catkin_ws
catkin_make

