# CMake generated Testfile for 
# Source directory: /home/hackfest03/ERA/catkin_ws/src/ros-bridge/carla_ros_bridge
# Build directory: /home/hackfest03/ERA/catkin_ws/build/ros-bridge/carla_ros_bridge
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_carla_ros_bridge_roslaunch-check_launch "/home/hackfest03/ERA/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/hackfest03/ERA/catkin_ws/build/test_results/carla_ros_bridge/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/hackfest03/ERA/catkin_ws/build/test_results/carla_ros_bridge" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/hackfest03/ERA/catkin_ws/build/test_results/carla_ros_bridge/roslaunch-check_launch.xml' '/home/hackfest03/ERA/catkin_ws/src/ros-bridge/carla_ros_bridge/launch' ")
add_test(_ctest_carla_ros_bridge_rostest_test_ros_bridge_client.test "/home/hackfest03/ERA/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/hackfest03/ERA/catkin_ws/build/test_results/carla_ros_bridge/rostest-test_ros_bridge_client.xml" "--return-code" "/opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/hackfest03/ERA/catkin_ws/src/ros-bridge/carla_ros_bridge --package=carla_ros_bridge --results-filename test_ros_bridge_client.xml --results-base-dir \"/home/hackfest03/ERA/catkin_ws/build/test_results\" /home/hackfest03/ERA/catkin_ws/src/ros-bridge/carla_ros_bridge/test/ros_bridge_client.test ")
