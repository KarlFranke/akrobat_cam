#!/bin/bash

#https://risc.readthedocs.io/2-auto-service-start-afer-boot.html
#https://askubuntu.com/questions/929659/bash-wait-for-a-ping-success

source /opt/ros/kinetic/setup.bash
source ~/catkin_ws/devel/setup.bash

printf "%s" "waiting for ServerXY ..."
while ! timeout 0.2 ping -c 1 -n 10.42.0.1 &> /dev/null
do
    printf "%c" "."
done
printf "\n%s\n"  "Server is back online"
roslaunch akrobat_cam Akrobat_Master_Mapping.launch
 