# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /var/lib/snapd/snap/clion/184/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /var/lib/snapd/snap/clion/184/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/katari/tp/labrabota5t2-h2o

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/katari/tp/labrabota5t2-h2o/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/functional.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/functional.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/functional.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/functional.dir/flags.make

src/CMakeFiles/functional.dir/functional.c.o: src/CMakeFiles/functional.dir/flags.make
src/CMakeFiles/functional.dir/functional.c.o: ../src/functional.c
src/CMakeFiles/functional.dir/functional.c.o: src/CMakeFiles/functional.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/katari/tp/labrabota5t2-h2o/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/functional.dir/functional.c.o"
	cd /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/CMakeFiles/functional.dir/functional.c.o -MF CMakeFiles/functional.dir/functional.c.o.d -o CMakeFiles/functional.dir/functional.c.o -c /home/katari/tp/labrabota5t2-h2o/src/functional.c

src/CMakeFiles/functional.dir/functional.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/functional.dir/functional.c.i"
	cd /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/katari/tp/labrabota5t2-h2o/src/functional.c > CMakeFiles/functional.dir/functional.c.i

src/CMakeFiles/functional.dir/functional.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/functional.dir/functional.c.s"
	cd /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/katari/tp/labrabota5t2-h2o/src/functional.c -o CMakeFiles/functional.dir/functional.c.s

# Object files for target functional
functional_OBJECTS = \
"CMakeFiles/functional.dir/functional.c.o"

# External object files for target functional
functional_EXTERNAL_OBJECTS =

src/libfunctional.so: src/CMakeFiles/functional.dir/functional.c.o
src/libfunctional.so: src/CMakeFiles/functional.dir/build.make
src/libfunctional.so: /usr/lib/libsqlite3.so
src/libfunctional.so: src/CMakeFiles/functional.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/katari/tp/labrabota5t2-h2o/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libfunctional.so"
	cd /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/functional.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/functional.dir/build: src/libfunctional.so
.PHONY : src/CMakeFiles/functional.dir/build

src/CMakeFiles/functional.dir/clean:
	cd /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/functional.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/functional.dir/clean

src/CMakeFiles/functional.dir/depend:
	cd /home/katari/tp/labrabota5t2-h2o/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/katari/tp/labrabota5t2-h2o /home/katari/tp/labrabota5t2-h2o/src /home/katari/tp/labrabota5t2-h2o/cmake-build-debug /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src /home/katari/tp/labrabota5t2-h2o/cmake-build-debug/src/CMakeFiles/functional.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/functional.dir/depend

