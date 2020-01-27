# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "realsense_ros_person: 15 messages, 7 services")

set(MSG_I_FLAGS "-Irealsense_ros_person:/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(realsense_ros_person_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" "geometry_msgs/Point32:geometry_msgs/Point"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" "realsense_ros_person/EulerAngles"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" "realsense_ros_person/Wave:geometry_msgs/Point32:realsense_ros_person/Pointing:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" "geometry_msgs/Point:realsense_ros_person/UserInfo:realsense_ros_person/Landmark:realsense_ros_person/Wave:realsense_ros_person/Gestures:realsense_ros_person/LandmarksInfo:realsense_ros_person/Pointing:realsense_ros_person/RectWithConfidence:realsense_ros_person/User:geometry_msgs/Vector3:realsense_ros_person/SkeletonJoint:realsense_ros_person/EulerAngles:geometry_msgs/Point32:realsense_ros_person/EulerAnglesWithConfidence"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" "geometry_msgs/Point32:realsense_ros_person/Landmark:geometry_msgs/Point"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" "geometry_msgs/Point32:geometry_msgs/Point"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" "geometry_msgs/Point:sensor_msgs/Image:geometry_msgs/Point32:std_msgs/Header:realsense_ros_person/Wave:realsense_ros_person/Gestures:realsense_ros_person/UserInfo:realsense_ros_person/Pointing:realsense_ros_person/RectWithConfidence:realsense_ros_person/User:geometry_msgs/Vector3:realsense_ros_person/LandmarksInfo:realsense_ros_person/Frame:realsense_ros_person/SkeletonJoint:realsense_ros_person/EulerAngles:realsense_ros_person/EulerAnglesWithConfidence:realsense_ros_person/Landmark"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" "geometry_msgs/Point32:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" "realsense_ros_person/UserInfo:realsense_ros_person/Landmark:realsense_ros_person/Wave:realsense_ros_person/Gestures:realsense_ros_person/LandmarksInfo:realsense_ros_person/Pointing:geometry_msgs/Point:realsense_ros_person/RectWithConfidence:geometry_msgs/Vector3:realsense_ros_person/SkeletonJoint:realsense_ros_person/EulerAngles:geometry_msgs/Point32:realsense_ros_person/EulerAnglesWithConfidence"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" "geometry_msgs/Point32:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" ""
)

get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" NAME_WE)
add_custom_target(_realsense_ros_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "realsense_ros_person" "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)

### Generating Services
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_cpp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
)

### Generating Module File
_generate_module_cpp(realsense_ros_person
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(realsense_ros_person_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(realsense_ros_person_generate_messages realsense_ros_person_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_cpp _realsense_ros_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_person_gencpp)
add_dependencies(realsense_ros_person_gencpp realsense_ros_person_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_person_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)

### Generating Services
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_eus(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
)

### Generating Module File
_generate_module_eus(realsense_ros_person
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(realsense_ros_person_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(realsense_ros_person_generate_messages realsense_ros_person_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_eus _realsense_ros_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_person_geneus)
add_dependencies(realsense_ros_person_geneus realsense_ros_person_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_person_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)

### Generating Services
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_lisp(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
)

### Generating Module File
_generate_module_lisp(realsense_ros_person
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(realsense_ros_person_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(realsense_ros_person_generate_messages realsense_ros_person_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_lisp _realsense_ros_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_person_genlisp)
add_dependencies(realsense_ros_person_genlisp realsense_ros_person_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_person_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)

### Generating Services
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_nodejs(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
)

### Generating Module File
_generate_module_nodejs(realsense_ros_person
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(realsense_ros_person_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(realsense_ros_person_generate_messages realsense_ros_person_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_nodejs _realsense_ros_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_person_gennodejs)
add_dependencies(realsense_ros_person_gennodejs realsense_ros_person_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_person_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg"
  "${MSG_I_FLAGS}"
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_msg_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)

### Generating Services
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)
_generate_srv_py(realsense_ros_person
  "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
)

### Generating Module File
_generate_module_py(realsense_ros_person
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(realsense_ros_person_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(realsense_ros_person_generate_messages realsense_ros_person_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/PersonModuleState.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/SkeletonJoint.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAnglesWithConfidence.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gestures.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/EulerAngles.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StartTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Frame.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/LandmarksInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Wave.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/LoadRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/StopTracking.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Landmark.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/UserInfo.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/SaveRecognitionDB.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/FrameTest.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Pointing.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/User.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg/Gesture.msg" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/RecognitionRegister.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/TrackingConfig.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/srv/Recognition.srv" NAME_WE)
add_dependencies(realsense_ros_person_generate_messages_py _realsense_ros_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(realsense_ros_person_genpy)
add_dependencies(realsense_ros_person_genpy realsense_ros_person_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS realsense_ros_person_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/realsense_ros_person
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(realsense_ros_person_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(realsense_ros_person_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(realsense_ros_person_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/realsense_ros_person
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(realsense_ros_person_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(realsense_ros_person_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(realsense_ros_person_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/realsense_ros_person
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(realsense_ros_person_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(realsense_ros_person_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(realsense_ros_person_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/realsense_ros_person
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(realsense_ros_person_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(realsense_ros_person_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(realsense_ros_person_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/realsense_ros_person
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(realsense_ros_person_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(realsense_ros_person_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(realsense_ros_person_generate_messages_py geometry_msgs_generate_messages_py)
endif()
