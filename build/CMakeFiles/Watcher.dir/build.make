# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /arm/force_sensor_serial_port

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /arm/force_sensor_serial_port/build

# Include any dependencies generated for this target.
include CMakeFiles/Watcher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Watcher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Watcher.dir/flags.make

CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: CMakeFiles/Watcher.dir/flags.make
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: ../src/ForceTorqueWatcher.cpp
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: ../manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/core/genmsg_cpp/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/tools/rospack/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/core/roslib/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/std_msgs/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/core/roslang/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/3rdparty/xmlrpcpp/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/core/rosconsole/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /opt/ros/ros/core/roscpp/manifest.xml
CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o: /arm/cereal_port/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /arm/force_sensor_serial_port/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o -c /arm/force_sensor_serial_port/src/ForceTorqueWatcher.cpp

CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /arm/force_sensor_serial_port/src/ForceTorqueWatcher.cpp > CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.i

CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /arm/force_sensor_serial_port/src/ForceTorqueWatcher.cpp -o CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.s

CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.requires:
.PHONY : CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.requires

CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.provides: CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.requires
	$(MAKE) -f CMakeFiles/Watcher.dir/build.make CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.provides.build
.PHONY : CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.provides

CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.provides.build: CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o
.PHONY : CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.provides.build

# Object files for target Watcher
Watcher_OBJECTS = \
"CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o"

# External object files for target Watcher
Watcher_EXTERNAL_OBJECTS =

../bin/Watcher: CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o
../bin/Watcher: CMakeFiles/Watcher.dir/build.make
../bin/Watcher: CMakeFiles/Watcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/Watcher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Watcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Watcher.dir/build: ../bin/Watcher
.PHONY : CMakeFiles/Watcher.dir/build

CMakeFiles/Watcher.dir/requires: CMakeFiles/Watcher.dir/src/ForceTorqueWatcher.o.requires
.PHONY : CMakeFiles/Watcher.dir/requires

CMakeFiles/Watcher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Watcher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Watcher.dir/clean

CMakeFiles/Watcher.dir/depend:
	cd /arm/force_sensor_serial_port/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /arm/force_sensor_serial_port /arm/force_sensor_serial_port /arm/force_sensor_serial_port/build /arm/force_sensor_serial_port/build /arm/force_sensor_serial_port/build/CMakeFiles/Watcher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Watcher.dir/depend
