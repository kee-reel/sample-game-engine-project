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
CMAKE_SOURCE_DIR = /home/keereel/proj/SampleOGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/keereel/proj/SampleOGL/build

# Include any dependencies generated for this target.
include external/glfw/tests/CMakeFiles/monitors.dir/depend.make

# Include the progress variables for this target.
include external/glfw/tests/CMakeFiles/monitors.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/tests/CMakeFiles/monitors.dir/flags.make

external/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: external/glfw/tests/CMakeFiles/monitors.dir/flags.make
external/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: ../external/glfw/tests/monitors.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitors.dir/monitors.c.o -c /home/keereel/proj/SampleOGL/external/glfw/tests/monitors.c

external/glfw/tests/CMakeFiles/monitors.dir/monitors.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/monitors.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/tests/monitors.c > CMakeFiles/monitors.dir/monitors.c.i

external/glfw/tests/CMakeFiles/monitors.dir/monitors.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/monitors.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/tests/monitors.c -o CMakeFiles/monitors.dir/monitors.c.s

external/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: external/glfw/tests/CMakeFiles/monitors.dir/flags.make
external/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: ../external/glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitors.dir/__/deps/getopt.c.o -c /home/keereel/proj/SampleOGL/external/glfw/deps/getopt.c

external/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/__/deps/getopt.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/deps/getopt.c > CMakeFiles/monitors.dir/__/deps/getopt.c.i

external/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/__/deps/getopt.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/deps/getopt.c -o CMakeFiles/monitors.dir/__/deps/getopt.c.s

external/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o: external/glfw/tests/CMakeFiles/monitors.dir/flags.make
external/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o: ../external/glfw/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitors.dir/__/deps/glad_gl.c.o -c /home/keereel/proj/SampleOGL/external/glfw/deps/glad_gl.c

external/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/__/deps/glad_gl.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/deps/glad_gl.c > CMakeFiles/monitors.dir/__/deps/glad_gl.c.i

external/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/__/deps/glad_gl.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/deps/glad_gl.c -o CMakeFiles/monitors.dir/__/deps/glad_gl.c.s

# Object files for target monitors
monitors_OBJECTS = \
"CMakeFiles/monitors.dir/monitors.c.o" \
"CMakeFiles/monitors.dir/__/deps/getopt.c.o" \
"CMakeFiles/monitors.dir/__/deps/glad_gl.c.o"

# External object files for target monitors
monitors_EXTERNAL_OBJECTS =

external/glfw/tests/monitors: external/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o
external/glfw/tests/monitors: external/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o
external/glfw/tests/monitors: external/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad_gl.c.o
external/glfw/tests/monitors: external/glfw/tests/CMakeFiles/monitors.dir/build.make
external/glfw/tests/monitors: external/glfw/src/libglfw3.a
external/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libm.so
external/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/librt.so
external/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libm.so
external/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libX11.so
external/glfw/tests/monitors: external/glfw/tests/CMakeFiles/monitors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable monitors"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monitors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/tests/CMakeFiles/monitors.dir/build: external/glfw/tests/monitors

.PHONY : external/glfw/tests/CMakeFiles/monitors.dir/build

external/glfw/tests/CMakeFiles/monitors.dir/clean:
	cd /home/keereel/proj/SampleOGL/build/external/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/monitors.dir/cmake_clean.cmake
.PHONY : external/glfw/tests/CMakeFiles/monitors.dir/clean

external/glfw/tests/CMakeFiles/monitors.dir/depend:
	cd /home/keereel/proj/SampleOGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/keereel/proj/SampleOGL /home/keereel/proj/SampleOGL/external/glfw/tests /home/keereel/proj/SampleOGL/build /home/keereel/proj/SampleOGL/build/external/glfw/tests /home/keereel/proj/SampleOGL/build/external/glfw/tests/CMakeFiles/monitors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/tests/CMakeFiles/monitors.dir/depend

