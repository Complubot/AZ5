cmake_minimum_required(VERSION 2.8.3)
project(az5)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  tf
  laser_geometry
  message_generation
  move_base
)

catkin_python_setup()

add_message_files(
  FILES
  bumpers.msg
  simple_vel.msg
  ultrasounds.msg
  motor_state.msg
  simple_odom.msg
)

generate_messages(
  DEPENDENCIES
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES az5
  CATKIN_DEPENDS roscpp rospy tf message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(PROGRAMS
  scripts/joystick_reader
  scripts/us_filter
  scripts/pollotron
  scripts/robot_monitor
  scripts/laser_filter
  scripts/motor_replayer
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

add_executable(laser_point_cloud src/laser_point_cloud/main.cc)
target_link_libraries(laser_point_cloud ${catkin_LIBRARIES}) 

add_executable(safety_distance src/safety_distance/main.cc)
target_link_libraries(safety_distance ${catkin_LIBRARIES}) 

add_executable(odometry_reciver src/odometry_reciver/main.cc)
target_link_libraries(odometry_reciver ${catkin_LIBRARIES}) 

add_executable(odometry_sender src/odometry_sender/main.cc)
target_link_libraries(odometry_sender ${catkin_LIBRARIES}) 