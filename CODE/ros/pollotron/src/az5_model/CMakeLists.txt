cmake_minimum_required(VERSION 2.8.3)
project(az5_model)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  tf
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES az5_model
  CATKIN_DEPENDS roscpp rospy tf
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(fake_movement src/movements/fake_movement.cpp)
target_link_libraries(fake_movement ${catkin_LIBRARIES}) 

add_executable(robot_still src/movements/robot_still.cpp)
target_link_libraries(robot_still ${catkin_LIBRARIES}) 
