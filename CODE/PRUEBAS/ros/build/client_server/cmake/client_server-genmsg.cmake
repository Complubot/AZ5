# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "client_server: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iclient_server:/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(client_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" NAME_WE)
add_custom_target(_client_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "client_server" "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" NAME_WE)
add_custom_target(_client_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "client_server" "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_server
)

### Generating Services
_generate_srv_cpp(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_server
)

### Generating Module File
_generate_module_cpp(client_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(client_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(client_server_generate_messages client_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" NAME_WE)
add_dependencies(client_server_generate_messages_cpp _client_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" NAME_WE)
add_dependencies(client_server_generate_messages_cpp _client_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_server_gencpp)
add_dependencies(client_server_gencpp client_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_server
)

### Generating Services
_generate_srv_eus(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_server
)

### Generating Module File
_generate_module_eus(client_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(client_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(client_server_generate_messages client_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" NAME_WE)
add_dependencies(client_server_generate_messages_eus _client_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" NAME_WE)
add_dependencies(client_server_generate_messages_eus _client_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_server_geneus)
add_dependencies(client_server_geneus client_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_server
)

### Generating Services
_generate_srv_lisp(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_server
)

### Generating Module File
_generate_module_lisp(client_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(client_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(client_server_generate_messages client_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" NAME_WE)
add_dependencies(client_server_generate_messages_lisp _client_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" NAME_WE)
add_dependencies(client_server_generate_messages_lisp _client_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_server_genlisp)
add_dependencies(client_server_genlisp client_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_server
)

### Generating Services
_generate_srv_nodejs(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_server
)

### Generating Module File
_generate_module_nodejs(client_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(client_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(client_server_generate_messages client_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" NAME_WE)
add_dependencies(client_server_generate_messages_nodejs _client_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" NAME_WE)
add_dependencies(client_server_generate_messages_nodejs _client_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_server_gennodejs)
add_dependencies(client_server_gennodejs client_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_server
)

### Generating Services
_generate_srv_py(client_server
  "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_server
)

### Generating Module File
_generate_module_py(client_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(client_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(client_server_generate_messages client_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/msg/action.msg" NAME_WE)
add_dependencies(client_server_generate_messages_py _client_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/srv/calculate.srv" NAME_WE)
add_dependencies(client_server_generate_messages_py _client_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_server_genpy)
add_dependencies(client_server_genpy client_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(client_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(client_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(client_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(client_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(client_server_generate_messages_py std_msgs_generate_messages_py)
endif()
