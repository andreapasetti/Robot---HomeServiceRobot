#!/bin/sh

#Deploy turtlebot
xterm -e "cd /home/workspace/catkin_ws && source devel/setup.bash && roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/map/my_building" &

sleep 5

#Deploy amcl localization
xterm -e "cd /home/workspace/catkin_ws && source devel/setup.bash && roslaunch turtlebot_gazebo amcl_demo.launch  map_file:=/home/workspace/catkin_ws/src/map/map.yaml" &

sleep 5

# Deploy  view_navigation.launch
xterm -e "cd /home/workspace/catkin_ws && source devel/setup.bash && roslaunch turtlebot_rviz_launchers view_navigation.launch" 
