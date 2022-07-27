#!/usr/bin/env bash

# Launch the robot
source /opt/ros/noetic/setup.bash 
source ~/catkin_ws/devel/setup.bash 

echo "Launching Cam, please wait!"

until roslaunch akrobat_cam Akrobat_Master_Mapping.launch
do 
    echo "Shutdown"
    sleep 2
    #sudo shutdown now
done
 