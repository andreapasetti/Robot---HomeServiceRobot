# Robot---HomeServiceRobot
The project aims to code a turtlebot for a pick and place mission with autonomous navigation. The turtlebot will pick an object in a predefined location in the map, carry it in another predefined location and drop it. The project comprehend different phases to test different parts of the algorithm.

- With the SLAM testing part the robot maps the environment using SLAM
- With the AMCL testing part the robot can localize in the map
- With the Pick Objects testing part the robot moves to the pick-up point and the to the drop point
- With the Marker testing part it is possible to display markers in the map, each of them correspond to the object picked-up or dropped
- With the Home Service Robot final part the robot go the the marker (object) location, pick-it up and drop it in the final position

## Installation instructions

```
code sudo apt-get update && apt-get upgrade
code pip install rospkg
git clone <Repository>
cd catkin_ws
catkin_make
source devel/setup.bash`
```

## Packages
### Gmapping:
With this package the robot can perform SLAM and generate the map of an unknown environment.
```
https://github.com/ros-perception/slam_gmapping.git
```
### TurtleBot Teleop:
With this package it is possible to control manually the robot for the first and the second test.
```
https://github.com/turtlebot/turtlebot.git
```
### Turtlebot rviz launchers:
This package has a preconfigured Rviz with: robot model, laser range finder data, amcl particle cloud and a map.
```
https://github.com/turtlebot/turtlebot_interactions.git
```
### Turtlebot Gazebo:
This package is used to import the turtlebot2 robot model into gazebo world. The default world (willow garage) is changed to world which is created using world editior.
```
https://github.com/turtlebot/turtlebot_interactions.git
```
## 1. SLAM testing
- Run `test_slam.sh` shell script (turtlebot, teleop_keyboard for controlling the robot, rviz and gmapping will be launched).
- Select the terminal on which teleop_keyboard has been launched.
- Move the robot according to the terminal instructions.

Moving te robot the map is built on Rviz.

## 2. AMLC testing
- Run `test_navigation.sh` shell script (the map was generated previously). 
- Use **2D Nav goal** in Rviz. 

The robot will move to the point selected.

## 3. Pick Objects testing
- Run `pick_objects.sh` shell script.

The robot moves autonomously from the starting point to the pick-up point. Once after it reaches the pickup point it waits for 5 seconds. Now it moves towards the drop-off point. 
 
## 4. Marker testing
- Run add_marker.sh shell script to test the apperance of marker at the pick-up and drop-off location.

The marker at the pick-up point appears for 5 seconds, after that it appears at the dro- off point for 5 seconds.

## 5. Home Service Robot
- Run `home_service_robot.sh` shell script to launch turtlebot, amcl, rviz packages, pick_objects node, add_markers node.

This is final project that incorporates all the previous parts. The robot moves autonomously from the starting position to 
the pick-up point. Here a marker appears. When the robot after 5 seconds starts to move toward the drop-off point, the marker disappears. 
Once the robot arrives at destination the second marker (simulating the dropped object) appears. 












