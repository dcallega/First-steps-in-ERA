execute_process(COMMAND "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/build/ros-bridge/rqt_carla_control/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/build/ros-bridge/rqt_carla_control/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
