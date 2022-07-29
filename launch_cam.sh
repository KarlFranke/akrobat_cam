#!/bin/bash
printf "%s" "waiting for ServerXY ..."
while ! timeout 0.2 ping -c 1 -n 10.42.0.1 &> /dev/null
do
    printf "%c" "."
done
printf "\n%s\n"  "Server is back online"
roslaunch akrobat_cam Akrobat_Master_Mapping
 