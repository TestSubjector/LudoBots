# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/testsubjector/application/bullet-2.82-r2704

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/testsubjector/application/bullet-2.82-r2704

# Include any dependencies generated for this target.
include Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/depend.make

# Include the progress variables for this target.
include Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/progress.make

# Include the compile flags for this target's objects.
include Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/flags.make

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/flags.make
Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o: Demos/GyroscopicDemo/GyroscopicDemo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/testsubjector/application/bullet-2.82-r2704/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o -c /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/GyroscopicDemo.cpp

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.i"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/GyroscopicDemo.cpp > CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.i

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.s"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/GyroscopicDemo.cpp -o CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.s

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.requires:
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.requires

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.provides: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.requires
	$(MAKE) -f Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/build.make Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.provides.build
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.provides

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.provides.build: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/flags.make
Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o: Demos/GyroscopicDemo/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/testsubjector/application/bullet-2.82-r2704/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppGyroscopicDemo.dir/main.o -c /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/main.cpp

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppGyroscopicDemo.dir/main.i"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/main.cpp > CMakeFiles/AppGyroscopicDemo.dir/main.i

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppGyroscopicDemo.dir/main.s"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/main.cpp -o CMakeFiles/AppGyroscopicDemo.dir/main.s

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.requires:
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.requires

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.provides: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.requires
	$(MAKE) -f Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/build.make Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.provides.build
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.provides

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.provides.build: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o

# Object files for target AppGyroscopicDemo
AppGyroscopicDemo_OBJECTS = \
"CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o" \
"CMakeFiles/AppGyroscopicDemo.dir/main.o"

# External object files for target AppGyroscopicDemo
AppGyroscopicDemo_EXTERNAL_OBJECTS =

Demos/GyroscopicDemo/AppGyroscopicDemo: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o
Demos/GyroscopicDemo/AppGyroscopicDemo: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o
Demos/GyroscopicDemo/AppGyroscopicDemo: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/build.make
Demos/GyroscopicDemo/AppGyroscopicDemo: Demos/OpenGL/libOpenGLSupport.a
Demos/GyroscopicDemo/AppGyroscopicDemo: Extras/Serialize/BulletWorldImporter/libBulletWorldImporter.a
Demos/GyroscopicDemo/AppGyroscopicDemo: src/BulletDynamics/libBulletDynamics.a
Demos/GyroscopicDemo/AppGyroscopicDemo: src/BulletCollision/libBulletCollision.a
Demos/GyroscopicDemo/AppGyroscopicDemo: src/LinearMath/libLinearMath.a
Demos/GyroscopicDemo/AppGyroscopicDemo: Extras/Serialize/BulletFileLoader/libBulletFileLoader.a
Demos/GyroscopicDemo/AppGyroscopicDemo: /usr/lib/x86_64-linux-gnu/libglut.so
Demos/GyroscopicDemo/AppGyroscopicDemo: /usr/lib/x86_64-linux-gnu/libGL.so
Demos/GyroscopicDemo/AppGyroscopicDemo: /usr/lib/x86_64-linux-gnu/libGLU.so
Demos/GyroscopicDemo/AppGyroscopicDemo: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable AppGyroscopicDemo"
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AppGyroscopicDemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/build: Demos/GyroscopicDemo/AppGyroscopicDemo
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/build

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/requires: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/GyroscopicDemo.o.requires
Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/requires: Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/main.o.requires
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/requires

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/clean:
	cd /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo && $(CMAKE_COMMAND) -P CMakeFiles/AppGyroscopicDemo.dir/cmake_clean.cmake
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/clean

Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/depend:
	cd /home/testsubjector/application/bullet-2.82-r2704 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/testsubjector/application/bullet-2.82-r2704 /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo /home/testsubjector/application/bullet-2.82-r2704 /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo /home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Demos/GyroscopicDemo/CMakeFiles/AppGyroscopicDemo.dir/depend

