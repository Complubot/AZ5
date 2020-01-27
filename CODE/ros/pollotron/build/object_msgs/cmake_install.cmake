# Install script for directory: /home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/object_msgs/msg" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/msg/Object.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/msg/Objects.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/msg/ObjectInBox.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/msg/ObjectsInBoxes.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/object_msgs/srv" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/srv/ClassifyObject.srv"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/srv/DetectObject.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/object_msgs/cmake" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/object_msgs/catkin_generated/installspace/object_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/include/object_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/share/roseus/ros/object_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/share/common-lisp/ros/object_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/share/gennodejs/ros/object_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/lib/python2.7/dist-packages/object_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/devel/lib/python2.7/dist-packages/object_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/object_msgs/catkin_generated/installspace/object_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/object_msgs/cmake" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/object_msgs/catkin_generated/installspace/object_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/object_msgs/cmake" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/object_msgs/catkin_generated/installspace/object_msgsConfig.cmake"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/object_msgs/catkin_generated/installspace/object_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/object_msgs" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/object_msgs/package.xml")
endif()

