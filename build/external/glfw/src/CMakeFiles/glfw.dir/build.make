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
include external/glfw/src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include external/glfw/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw/src/CMakeFiles/glfw.dir/flags.make

external/glfw/src/CMakeFiles/glfw.dir/context.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/context.c.o: ../external/glfw/src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw/src/CMakeFiles/glfw.dir/context.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/context.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/context.c

external/glfw/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/context.c > CMakeFiles/glfw.dir/context.c.i

external/glfw/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/context.c -o CMakeFiles/glfw.dir/context.c.s

external/glfw/src/CMakeFiles/glfw.dir/init.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/init.c.o: ../external/glfw/src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/glfw/src/CMakeFiles/glfw.dir/init.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/init.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/init.c

external/glfw/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/init.c > CMakeFiles/glfw.dir/init.c.i

external/glfw/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/init.c -o CMakeFiles/glfw.dir/init.c.s

external/glfw/src/CMakeFiles/glfw.dir/input.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/input.c.o: ../external/glfw/src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/glfw/src/CMakeFiles/glfw.dir/input.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/input.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/input.c

external/glfw/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/input.c > CMakeFiles/glfw.dir/input.c.i

external/glfw/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/input.c -o CMakeFiles/glfw.dir/input.c.s

external/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: ../external/glfw/src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object external/glfw/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/monitor.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/monitor.c

external/glfw/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/monitor.c > CMakeFiles/glfw.dir/monitor.c.i

external/glfw/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/monitor.c -o CMakeFiles/glfw.dir/monitor.c.s

external/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: ../external/glfw/src/vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object external/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/vulkan.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/vulkan.c

external/glfw/src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/vulkan.c > CMakeFiles/glfw.dir/vulkan.c.i

external/glfw/src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/vulkan.c -o CMakeFiles/glfw.dir/vulkan.c.s

external/glfw/src/CMakeFiles/glfw.dir/window.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/window.c.o: ../external/glfw/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object external/glfw/src/CMakeFiles/glfw.dir/window.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/window.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/window.c

external/glfw/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/window.c > CMakeFiles/glfw.dir/window.c.i

external/glfw/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/window.c -o CMakeFiles/glfw.dir/window.c.s

external/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: ../external/glfw/src/x11_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object external/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_init.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/x11_init.c

external/glfw/src/CMakeFiles/glfw.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_init.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/x11_init.c > CMakeFiles/glfw.dir/x11_init.c.i

external/glfw/src/CMakeFiles/glfw.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_init.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/x11_init.c -o CMakeFiles/glfw.dir/x11_init.c.s

external/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: ../external/glfw/src/x11_monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object external/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_monitor.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/x11_monitor.c

external/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_monitor.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/x11_monitor.c > CMakeFiles/glfw.dir/x11_monitor.c.i

external/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_monitor.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/x11_monitor.c -o CMakeFiles/glfw.dir/x11_monitor.c.s

external/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: ../external/glfw/src/x11_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object external/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_window.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/x11_window.c

external/glfw/src/CMakeFiles/glfw.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_window.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/x11_window.c > CMakeFiles/glfw.dir/x11_window.c.i

external/glfw/src/CMakeFiles/glfw.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_window.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/x11_window.c -o CMakeFiles/glfw.dir/x11_window.c.s

external/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: ../external/glfw/src/xkb_unicode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object external/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/xkb_unicode.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/xkb_unicode.c

external/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/xkb_unicode.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/xkb_unicode.c > CMakeFiles/glfw.dir/xkb_unicode.c.i

external/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/xkb_unicode.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/xkb_unicode.c -o CMakeFiles/glfw.dir/xkb_unicode.c.s

external/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: ../external/glfw/src/posix_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object external/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_time.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/posix_time.c

external/glfw/src/CMakeFiles/glfw.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_time.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/posix_time.c > CMakeFiles/glfw.dir/posix_time.c.i

external/glfw/src/CMakeFiles/glfw.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_time.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/posix_time.c -o CMakeFiles/glfw.dir/posix_time.c.s

external/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: ../external/glfw/src/posix_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object external/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_thread.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/posix_thread.c

external/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_thread.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/posix_thread.c > CMakeFiles/glfw.dir/posix_thread.c.i

external/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_thread.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/posix_thread.c -o CMakeFiles/glfw.dir/posix_thread.c.s

external/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: ../external/glfw/src/glx_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object external/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/glx_context.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/glx_context.c

external/glfw/src/CMakeFiles/glfw.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/glx_context.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/glx_context.c > CMakeFiles/glfw.dir/glx_context.c.i

external/glfw/src/CMakeFiles/glfw.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/glx_context.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/glx_context.c -o CMakeFiles/glfw.dir/glx_context.c.s

external/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: ../external/glfw/src/egl_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object external/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/egl_context.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/egl_context.c

external/glfw/src/CMakeFiles/glfw.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/egl_context.c > CMakeFiles/glfw.dir/egl_context.c.i

external/glfw/src/CMakeFiles/glfw.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/egl_context.c -o CMakeFiles/glfw.dir/egl_context.c.s

external/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: ../external/glfw/src/osmesa_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object external/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/osmesa_context.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/osmesa_context.c

external/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/keereel/proj/SampleOGL/external/glfw/src/osmesa_context.c > CMakeFiles/glfw.dir/osmesa_context.c.i

external/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/keereel/proj/SampleOGL/external/glfw/src/osmesa_context.c -o CMakeFiles/glfw.dir/osmesa_context.c.s

external/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: external/glfw/src/CMakeFiles/glfw.dir/flags.make
external/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: ../external/glfw/src/linux_joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object external/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/linux_joystick.c.o -c /home/keereel/proj/SampleOGL/external/glfw/src/linux_joystick.c

external/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/linux_joystick.c.i"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/keereel/proj/SampleOGL/external/glfw/src/linux_joystick.c > CMakeFiles/glfw.dir/linux_joystick.c.i

external/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/linux_joystick.c.s"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/keereel/proj/SampleOGL/external/glfw/src/linux_joystick.c -o CMakeFiles/glfw.dir/linux_joystick.c.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/vulkan.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/x11_init.c.o" \
"CMakeFiles/glfw.dir/x11_monitor.c.o" \
"CMakeFiles/glfw.dir/x11_window.c.o" \
"CMakeFiles/glfw.dir/xkb_unicode.c.o" \
"CMakeFiles/glfw.dir/posix_time.c.o" \
"CMakeFiles/glfw.dir/posix_thread.c.o" \
"CMakeFiles/glfw.dir/glx_context.c.o" \
"CMakeFiles/glfw.dir/egl_context.c.o" \
"CMakeFiles/glfw.dir/osmesa_context.c.o" \
"CMakeFiles/glfw.dir/linux_joystick.c.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/context.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/init.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/input.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/monitor.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/window.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/build.make
external/glfw/src/libglfw3.a: external/glfw/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/keereel/proj/SampleOGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C static library libglfw3.a"
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw/src/CMakeFiles/glfw.dir/build: external/glfw/src/libglfw3.a

.PHONY : external/glfw/src/CMakeFiles/glfw.dir/build

external/glfw/src/CMakeFiles/glfw.dir/clean:
	cd /home/keereel/proj/SampleOGL/build/external/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : external/glfw/src/CMakeFiles/glfw.dir/clean

external/glfw/src/CMakeFiles/glfw.dir/depend:
	cd /home/keereel/proj/SampleOGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/keereel/proj/SampleOGL /home/keereel/proj/SampleOGL/external/glfw/src /home/keereel/proj/SampleOGL/build /home/keereel/proj/SampleOGL/build/external/glfw/src /home/keereel/proj/SampleOGL/build/external/glfw/src/CMakeFiles/glfw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw/src/CMakeFiles/glfw.dir/depend

