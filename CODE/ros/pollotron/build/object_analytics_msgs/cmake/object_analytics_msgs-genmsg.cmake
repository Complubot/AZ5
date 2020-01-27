# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_analytics_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iobject_analytics_msgs:/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_analytics_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" NAME_WE)
add_custom_target(_object_analytics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_analytics_msgs" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" "sensor_msgs/RegionOfInterest:std_msgs/Header:object_analytics_msgs/TrackedObject"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" NAME_WE)
add_custom_target(_object_analytics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_analytics_msgs" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" "sensor_msgs/RegionOfInterest:geometry_msgs/Point32"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" NAME_WE)
add_custom_target(_object_analytics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_analytics_msgs" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" NAME_WE)
add_custom_target(_object_analytics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_analytics_msgs" "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" "geometry_msgs/Point32:sensor_msgs/RegionOfInterest:std_msgs/Header:object_analytics_msgs/ObjectInBox3D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_cpp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_cpp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_cpp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(object_analytics_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_analytics_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_analytics_msgs_generate_messages object_analytics_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_cpp _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_cpp _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_cpp _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_cpp _object_analytics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_analytics_msgs_gencpp)
add_dependencies(object_analytics_msgs_gencpp object_analytics_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_analytics_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_eus(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_eus(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_eus(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(object_analytics_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_analytics_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_analytics_msgs_generate_messages object_analytics_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_eus _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_eus _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_eus _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_eus _object_analytics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_analytics_msgs_geneus)
add_dependencies(object_analytics_msgs_geneus object_analytics_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_analytics_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_lisp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_lisp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_lisp(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(object_analytics_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_analytics_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_analytics_msgs_generate_messages object_analytics_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_lisp _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_lisp _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_lisp _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_lisp _object_analytics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_analytics_msgs_genlisp)
add_dependencies(object_analytics_msgs_genlisp object_analytics_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_analytics_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_nodejs(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_nodejs(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_nodejs(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(object_analytics_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_analytics_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_analytics_msgs_generate_messages object_analytics_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_nodejs _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_nodejs _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_nodejs _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_nodejs _object_analytics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_analytics_msgs_gennodejs)
add_dependencies(object_analytics_msgs_gennodejs object_analytics_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_analytics_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_py(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_py(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs
)
_generate_msg_py(object_analytics_msgs
  "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(object_analytics_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_analytics_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_analytics_msgs_generate_messages object_analytics_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObjects.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_py _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectInBox3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_py _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_py _object_analytics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_analytics_msgs/msg/ObjectsInBoxes3D.msg" NAME_WE)
add_dependencies(object_analytics_msgs_generate_messages_py _object_analytics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_analytics_msgs_genpy)
add_dependencies(object_analytics_msgs_genpy object_analytics_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_analytics_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_analytics_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_analytics_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(object_analytics_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(object_analytics_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_analytics_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(object_analytics_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(object_analytics_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(object_analytics_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_analytics_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_analytics_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(object_analytics_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(object_analytics_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_analytics_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(object_analytics_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(object_analytics_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(object_analytics_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_analytics_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_analytics_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(object_analytics_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(object_analytics_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
