# Install script for directory: /home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/az5/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/az5/msg" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/bumpers.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/simple_vel.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/ultrasounds.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/msg/motor_state.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/az5/cmake" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/az5/catkin_generated/installspace/az5-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/include/az5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/share/roseus/ros/az5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/share/common-lisp/ros/az5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/share/gennodejs/ros/az5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/lib/python2.7/dist-packages/az5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/lib/python2.7/dist-packages/az5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/az5/catkin_generated/installspace/az5.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/az5/cmake" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/az5/catkin_generated/installspace/az5-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/az5/cmake" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/az5/catkin_generated/installspace/az5Config.cmake"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/az5/catkin_generated/installspace/az5Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/az5" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/az5" TYPE PROGRAM FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/scripts/joystick_reader"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/scripts/us_filter"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/scripts/pollotron"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/scripts/robot_monitor"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/scripts/laser_filter"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/az5/scripts/motor_replayer"
    )
endif()

