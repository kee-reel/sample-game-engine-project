# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/keereel/proj/SampleOpenGL/glew-2.2.0/build/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/keereel/proj/SampleOpenGL/glew-2.2.0/build

# Include any dependencies generated for this target.
include CMakeFiles/visualinfo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/visualinfo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/visualinfo.dir/flags.make

CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.o: CMakeFiles/visualinfo.dir/flags.make
CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.o: /home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOpenGL/glew-2.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.o -c /home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c

CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c > CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.i

CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c -o CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.s

# Object files for target visualinfo
visualinfo_OBJECTS = \
"CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.o"

# External object files for target visualinfo
visualinfo_EXTERNAL_OBJECTS =

bin/visualinfo: CMakeFiles/visualinfo.dir/home/keereel/proj/SampleOpenGL/glew-2.2.0/src/visualinfo.c.o
bin/visualinfo: CMakeFiles/visualinfo.dir/build.make
bin/visualinfo: lib/libGLEW.so.2.2.0
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libSM.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libICE.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libX11.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libXext.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libGL.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libSM.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libICE.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libX11.so
bin/visualinfo: /usr/lib/x86_64-linux-gnu/libXext.so
bin/visualinfo: CMakeFiles/visualinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/keereel/proj/SampleOpenGL/glew-2.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/visualinfo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/visualinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/visualinfo.dir/build: bin/visualinfo

.PHONY : CMakeFiles/visualinfo.dir/build

CMakeFiles/visualinfo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/visualinfo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/visualinfo.dir/clean

CMakeFiles/visualinfo.dir/depend:
	cd /home/keereel/proj/SampleOpenGL/glew-2.2.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/keereel/proj/SampleOpenGL/glew-2.2.0/build/cmake /home/keereel/proj/SampleOpenGL/glew-2.2.0/build/cmake /home/keereel/proj/SampleOpenGL/glew-2.2.0/build /home/keereel/proj/SampleOpenGL/glew-2.2.0/build /home/keereel/proj/SampleOpenGL/glew-2.2.0/build/CMakeFiles/visualinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/visualinfo.dir/depend

