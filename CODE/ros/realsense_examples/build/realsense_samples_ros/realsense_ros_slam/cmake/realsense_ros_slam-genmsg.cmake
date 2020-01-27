# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "realsense_ros_slam: 1 messages, 2 services")

set(MSG_I_FLAGS "-Irealsense_ros_slam:/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(realsense_ros_slam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" NAME_WE)
add_custom_target(_realsense_ros_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_slam" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" NAME_WE)
add_custom_target(_realsense_ros_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_slam" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" NAME_WE)
add_custom_target(_realsense_ros_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_slam" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_slam
)

### Generating Services
_generate_srv_cpp(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_slam
)
_generate_srv_cpp(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_slam
)

### Generating Module File
_generate_module_cpp(realsense_ros_slam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_slam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(realsense_ros_slam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(realsense_ros_slam_generate_messages realsense_ros_slam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_cpp _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_cpp _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_cpp _realsense_ros_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_slam_gencpp)
add_dependencies(realsense_ros_slam_gencpp realsense_ros_slam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_slam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_slam
)

### Generating Services
_generate_srv_eus(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_slam
)
_generate_srv_eus(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_slam
)

### Generating Module File
_generate_module_eus(realsense_ros_slam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_slam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(realsense_ros_slam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(realsense_ros_slam_generate_messages realsense_ros_slam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_eus _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_eus _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_eus _realsense_ros_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_slam_geneus)
add_dependencies(realsense_ros_slam_geneus realsense_ros_slam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_slam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_slam
)

### Generating Services
_generate_srv_lisp(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_slam
)
_generate_srv_lisp(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_slam
)

### Generating Module File
_generate_module_lisp(realsense_ros_slam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_slam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(realsense_ros_slam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(realsense_ros_slam_generate_messages realsense_ros_slam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_lisp _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_lisp _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_lisp _realsense_ros_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_slam_genlisp)
add_dependencies(realsense_ros_slam_genlisp realsense_ros_slam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_slam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_slam
)

### Generating Services
_generate_srv_nodejs(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_slam
)
_generate_srv_nodejs(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_slam
)

### Generating Module File
_generate_module_nodejs(realsense_ros_slam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_slam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(realsense_ros_slam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(realsense_ros_slam_generate_messages realsense_ros_slam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_nodejs _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_nodejs _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_nodejs _realsense_ros_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_slam_gennodejs)
add_dependencies(realsense_ros_slam_gennodejs realsense_ros_slam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_slam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam
)

### Generating Services
_generate_srv_py(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam
)
_generate_srv_py(realsense_ros_slam
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam
)

### Generating Module File
_generate_module_py(realsense_ros_slam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(realsense_ros_slam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(realsense_ros_slam_generate_messages realsense_ros_slam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/Reset.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_py _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/srv/SaveOutput.srv" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_py _realsense_ros_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_slam/msg/TrackingAccuracy.msg" NAME_WE)
add_dependencies(realsense_ros_slam_generate_messages_py _realsense_ros_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_slam_genpy)
add_dependencies(realsense_ros_slam_genpy realsense_ros_slam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_slam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_slam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(realsense_ros_slam_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(realsense_ros_slam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_slam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(realsense_ros_slam_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(realsense_ros_slam_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_slam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(realsense_ros_slam_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(realsense_ros_slam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_slam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(realsense_ros_slam_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(realsense_ros_slam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_slam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(realsense_ros_slam_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(realsense_ros_slam_generate_messages_py std_msgs_generate_messages_py)
endif()
