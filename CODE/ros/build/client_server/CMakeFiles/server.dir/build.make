# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/complubot/Documents/POLLOTRON/CODE/ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/complubot/Documents/POLLOTRON/CODE/ros/build

# Include any dependencies generated for this target.
include client_server/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include client_server/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include client_server/CMakeFiles/server.dir/flags.make

client_server/CMakeFiles/server.dir/src/server.cpp.o: client_server/CMakeFiles/server.dir/flags.make
client_server/CMakeFiles/server.dir/src/server.cpp.o: /home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/complubot/Documents/POLLOTRON/CODE/ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object client_server/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/src/server.cpp

client_server/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

client_server/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

client_server/CMakeFiles/server.dir/src/server.cpp.o.requires:

.PHONY : client_server/CMakeFiles/server.dir/src/server.cpp.o.requires

client_server/CMakeFiles/server.dir/src/server.cpp.o.provides: client_server/CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f client_server/CMakeFiles/server.dir/build.make client_server/CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : client_server/CMakeFiles/server.dir/src/server.cpp.o.provides

client_server/CMakeFiles/server.dir/src/server.cpp.o.provides.build: client_server/CMakeFiles/server.dir/src/server.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: client_server/CMakeFiles/server.dir/src/server.cpp.o
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: client_server/CMakeFiles/server.dir/build.make
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/libroscpp.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/librosconsole.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/librostime.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /opt/ros/kinetic/lib/libcpp_common.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server: client_server/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/complubot/Documents/POLLOTRON/CODE/ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server"
	cd /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client_server/CMakeFiles/server.dir/build: /home/complubot/Documents/POLLOTRON/CODE/ros/devel/lib/client_server/server

.PHONY : client_server/CMakeFiles/server.dir/build

client_server/CMakeFiles/server.dir/requires: client_server/CMakeFiles/server.dir/src/server.cpp.o.requires

.PHONY : client_server/CMakeFiles/server.dir/requires

client_server/CMakeFiles/server.dir/clean:
	cd /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : client_server/CMakeFiles/server.dir/clean

client_server/CMakeFiles/server.dir/depend:
	cd /home/complubot/Documents/POLLOTRON/CODE/ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/complubot/Documents/POLLOTRON/CODE/ros/src /home/complubot/Documents/POLLOTRON/CODE/ros/src/client_server /home/complubot/Documents/POLLOTRON/CODE/ros/build /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server /home/complubot/Documents/POLLOTRON/CODE/ros/build/client_server/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client_server/CMakeFiles/server.dir/depend

