#!/bin/sh
export ROBOT_INITIAL_POSE="-x 0 -y 0 -Y 1.5708"
export TURTLEBOT_GAZEBO_WORLD_FILE=/home/workspace/catkin_ws/src/map/my_building
xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/catkin_ws/src/map/my_map.yaml" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" 


