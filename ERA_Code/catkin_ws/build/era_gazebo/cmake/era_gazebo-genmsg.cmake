# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "era_gazebo: 4 messages, 1 services")

set(MSG_I_FLAGS "-Iera_gazebo:/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(era_gazebo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" NAME_WE)
add_custom_target(_era_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_gazebo" "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" "era_gazebo/DetectionBox:std_msgs/Header"
)

get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" NAME_WE)
add_custom_target(_era_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_gazebo" "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" "geometry_msgs/Pose:nav_msgs/MapMetaData:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" NAME_WE)
add_custom_target(_era_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_gazebo" "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" "era_gazebo/DetectionBox:std_msgs/Header"
)

get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" NAME_WE)
add_custom_target(_era_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_gazebo" "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" "nav_msgs/MapMetaData:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" NAME_WE)
add_custom_target(_era_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_gazebo" "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
)
_generate_msg_cpp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
)
_generate_msg_cpp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
)
_generate_msg_cpp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
)

### Generating Services
_generate_srv_cpp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
)

### Generating Module File
_generate_module_cpp(era_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(era_gazebo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(era_gazebo_generate_messages era_gazebo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" NAME_WE)
add_dependencies(era_gazebo_generate_messages_cpp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_cpp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_cpp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_cpp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_cpp _era_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_gazebo_gencpp)
add_dependencies(era_gazebo_gencpp era_gazebo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_gazebo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
)
_generate_msg_eus(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
)
_generate_msg_eus(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
)
_generate_msg_eus(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
)

### Generating Services
_generate_srv_eus(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
)

### Generating Module File
_generate_module_eus(era_gazebo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(era_gazebo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(era_gazebo_generate_messages era_gazebo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" NAME_WE)
add_dependencies(era_gazebo_generate_messages_eus _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_eus _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_eus _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_eus _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_eus _era_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_gazebo_geneus)
add_dependencies(era_gazebo_geneus era_gazebo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_gazebo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
)
_generate_msg_lisp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
)
_generate_msg_lisp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
)
_generate_msg_lisp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
)

### Generating Services
_generate_srv_lisp(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
)

### Generating Module File
_generate_module_lisp(era_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(era_gazebo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(era_gazebo_generate_messages era_gazebo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" NAME_WE)
add_dependencies(era_gazebo_generate_messages_lisp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_lisp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_lisp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_lisp _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_lisp _era_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_gazebo_genlisp)
add_dependencies(era_gazebo_genlisp era_gazebo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_gazebo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
)
_generate_msg_nodejs(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
)
_generate_msg_nodejs(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
)
_generate_msg_nodejs(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
)

### Generating Services
_generate_srv_nodejs(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
)

### Generating Module File
_generate_module_nodejs(era_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(era_gazebo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(era_gazebo_generate_messages era_gazebo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" NAME_WE)
add_dependencies(era_gazebo_generate_messages_nodejs _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_nodejs _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_nodejs _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_nodejs _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_nodejs _era_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_gazebo_gennodejs)
add_dependencies(era_gazebo_gennodejs era_gazebo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_gazebo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
)
_generate_msg_py(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
)
_generate_msg_py(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
)
_generate_msg_py(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
)

### Generating Services
_generate_srv_py(era_gazebo
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv"
  "${MSG_I_FLAGS}"
  "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
)

### Generating Module File
_generate_module_py(era_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(era_gazebo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(era_gazebo_generate_messages era_gazebo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/srv/SceneBBox.srv" NAME_WE)
add_dependencies(era_gazebo_generate_messages_py _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAOccupancyGrid.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_py _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBoxList.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_py _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/ERAMsg.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_py _era_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hackfest03/First-steps-in-ERA/ERA_Code/catkin_ws/src/era_gazebo/msg/DetectionBox.msg" NAME_WE)
add_dependencies(era_gazebo_generate_messages_py _era_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_gazebo_genpy)
add_dependencies(era_gazebo_genpy era_gazebo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_gazebo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_gazebo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(era_gazebo_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(era_gazebo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(era_gazebo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_gazebo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(era_gazebo_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(era_gazebo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(era_gazebo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_gazebo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(era_gazebo_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(era_gazebo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(era_gazebo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_gazebo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(era_gazebo_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(era_gazebo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(era_gazebo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(era_gazebo_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(era_gazebo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(era_gazebo_generate_messages_py std_msgs_generate_messages_py)
endif()
