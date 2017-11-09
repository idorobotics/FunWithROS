# FunWithROS

OVERVIEW

This repository contains two exercises:
1. Performance testing of ROS publishers and subscribers implemented in C++ and Python
2. Canny edge detection on an image stream acquired from built-in laptop webcam 

DEPENDENCIES

1. Robot Operating System (ROS) Kinetic
2. OpenCV v3
3. cv_bridge (ROS package) contained within the vision_opencv package
4. cv_camera (ROS package)

USAGE

1. Exercise 1 is contained in ROS package named performance tests 
2. Excercise 2 is contained in a ROS package named canny_edge_my_face. Run the canny_edge_my_face.launch launch file which will also launch rqt_viewer. To see the original stream select the /cv_camera_node/image_raw topic. To see the canny edge detection stream select the /canny_edge_my_face/image_canny topic.  

AUTHOR

Bonolo M. 

LICENSE

Distributed under the GNU GPLv3
