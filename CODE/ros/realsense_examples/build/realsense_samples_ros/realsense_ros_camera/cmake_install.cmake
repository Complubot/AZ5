# Install script for directory: /home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_camera

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera/msg" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_camera/msg/IMUInfo.msg"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_camera/msg/Extrinsics.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera/cmake" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/build/realsense_samples_ros/realsense_ros_camera/catkin_generated/installspace/realsense_ros_camera-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/include/realsense_ros_camera")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/share/roseus/ros/realsense_ros_camera")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/share/common-lisp/ros/realsense_ros_camera")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/share/gennodejs/ros/realsense_ros_camera")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/lib/python2.7/dist-packages/realsense_ros_camera")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/lib/python2.7/dist-packages/realsense_ros_camera")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/build/realsense_samples_ros/realsense_ros_camera/catkin_generated/installspace/realsense_ros_camera.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera/cmake" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/build/realsense_samples_ros/realsense_ros_camera/catkin_generated/installspace/realsense_ros_camera-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera/cmake" TYPE FILE FILES
    "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/build/realsense_samples_ros/realsense_ros_camera/catkin_generated/installspace/realsense_ros_cameraConfig.cmake"
    "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/build/realsense_samples_ros/realsense_ros_camera/catkin_generated/installspace/realsense_ros_cameraConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_camera/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/devel/lib/librealsense_ros_camera.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librealsense_ros_camera.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera/launch" TYPE DIRECTORY FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_camera/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/realsense_ros_camera" TYPE FILE FILES "/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_camera/nodelet_plugins.xml")
endif()

