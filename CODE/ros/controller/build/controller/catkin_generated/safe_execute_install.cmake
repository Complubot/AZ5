execute_process(COMMAND "/home/complubot/Documents/POLLOTRON/CODE/ros/controller/build/controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/complubot/Documents/POLLOTRON/CODE/ros/controller/build/controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
