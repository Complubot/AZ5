# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "az5: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iaz5:/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(az5_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" NAME_WE)
add_custom_target(_az5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "az5" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" NAME_WE)
add_custom_target(_az5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "az5" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" NAME_WE)
add_custom_target(_az5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "az5" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" NAME_WE)
add_custom_target(_az5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "az5" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5
)
_generate_msg_cpp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5
)
_generate_msg_cpp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5
)
_generate_msg_cpp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5
)

### Generating Services

### Generating Module File
_generate_module_cpp(az5
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(az5_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(az5_generate_messages az5_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" NAME_WE)
add_dependencies(az5_generate_messages_cpp _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" NAME_WE)
add_dependencies(az5_generate_messages_cpp _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" NAME_WE)
add_dependencies(az5_generate_messages_cpp _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" NAME_WE)
add_dependencies(az5_generate_messages_cpp _az5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(az5_gencpp)
add_dependencies(az5_gencpp az5_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS az5_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5
)
_generate_msg_eus(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5
)
_generate_msg_eus(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5
)
_generate_msg_eus(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5
)

### Generating Services

### Generating Module File
_generate_module_eus(az5
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(az5_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(az5_generate_messages az5_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" NAME_WE)
add_dependencies(az5_generate_messages_eus _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" NAME_WE)
add_dependencies(az5_generate_messages_eus _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" NAME_WE)
add_dependencies(az5_generate_messages_eus _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" NAME_WE)
add_dependencies(az5_generate_messages_eus _az5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(az5_geneus)
add_dependencies(az5_geneus az5_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS az5_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5
)
_generate_msg_lisp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5
)
_generate_msg_lisp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5
)
_generate_msg_lisp(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5
)

### Generating Services

### Generating Module File
_generate_module_lisp(az5
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(az5_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(az5_generate_messages az5_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" NAME_WE)
add_dependencies(az5_generate_messages_lisp _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" NAME_WE)
add_dependencies(az5_generate_messages_lisp _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" NAME_WE)
add_dependencies(az5_generate_messages_lisp _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" NAME_WE)
add_dependencies(az5_generate_messages_lisp _az5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(az5_genlisp)
add_dependencies(az5_genlisp az5_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS az5_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5
)
_generate_msg_nodejs(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5
)
_generate_msg_nodejs(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5
)
_generate_msg_nodejs(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5
)

### Generating Services

### Generating Module File
_generate_module_nodejs(az5
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(az5_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(az5_generate_messages az5_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" NAME_WE)
add_dependencies(az5_generate_messages_nodejs _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" NAME_WE)
add_dependencies(az5_generate_messages_nodejs _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" NAME_WE)
add_dependencies(az5_generate_messages_nodejs _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" NAME_WE)
add_dependencies(az5_generate_messages_nodejs _az5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(az5_gennodejs)
add_dependencies(az5_gennodejs az5_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS az5_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5
)
_generate_msg_py(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5
)
_generate_msg_py(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5
)
_generate_msg_py(az5
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5
)

### Generating Services

### Generating Module File
_generate_module_py(az5
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(az5_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(az5_generate_messages az5_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg" NAME_WE)
add_dependencies(az5_generate_messages_py _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg" NAME_WE)
add_dependencies(az5_generate_messages_py _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg" NAME_WE)
add_dependencies(az5_generate_messages_py _az5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg" NAME_WE)
add_dependencies(az5_generate_messages_py _az5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(az5_genpy)
add_dependencies(az5_genpy az5_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS az5_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/az5
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/az5
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/az5
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/az5
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/az5
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
