cmake_minimum_required(VERSION 2.8.3)
project(controller)

# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)

catkin_python_setup()


add_message_files(
  FILES
  raw_controller.msg
  ultrasounds.msg
  buttons.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES controller
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
  CATKIN_DEPENDS message_runtime
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

install(PROGRAMS
  scripts/controller_reader
  scripts/us_filter
  scripts/pollotron
  scripts/robot_monitor
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
