# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/atmerhannah/argodsm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/atmerhannah/argodsm/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/lockTests-mpi.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/lockTests-mpi.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/lockTests-mpi.dir/flags.make

tests/CMakeFiles/lockTests-mpi.dir/lock.cpp.o: tests/CMakeFiles/lockTests-mpi.dir/flags.make
tests/CMakeFiles/lockTests-mpi.dir/lock.cpp.o: ../tests/lock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/atmerhannah/argodsm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/lockTests-mpi.dir/lock.cpp.o"
	cd /home/atmerhannah/argodsm/build/tests && /home/atmerhannah/ompi5/bin/mpic++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lockTests-mpi.dir/lock.cpp.o -c /home/atmerhannah/argodsm/tests/lock.cpp

tests/CMakeFiles/lockTests-mpi.dir/lock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lockTests-mpi.dir/lock.cpp.i"
	cd /home/atmerhannah/argodsm/build/tests && /home/atmerhannah/ompi5/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/atmerhannah/argodsm/tests/lock.cpp > CMakeFiles/lockTests-mpi.dir/lock.cpp.i

tests/CMakeFiles/lockTests-mpi.dir/lock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lockTests-mpi.dir/lock.cpp.s"
	cd /home/atmerhannah/argodsm/build/tests && /home/atmerhannah/ompi5/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/atmerhannah/argodsm/tests/lock.cpp -o CMakeFiles/lockTests-mpi.dir/lock.cpp.s

# Object files for target lockTests-mpi
lockTests__mpi_OBJECTS = \
"CMakeFiles/lockTests-mpi.dir/lock.cpp.o"

# External object files for target lockTests-mpi
lockTests__mpi_EXTERNAL_OBJECTS =

bin/mpi/lockTests: tests/CMakeFiles/lockTests-mpi.dir/lock.cpp.o
bin/mpi/lockTests: tests/CMakeFiles/lockTests-mpi.dir/build.make
bin/mpi/lockTests: lib/libargo.so
bin/mpi/lockTests: lib/libargobackend-mpi.so
bin/mpi/lockTests: lib/libgtest.a
bin/mpi/lockTests: tests/CMakeFiles/lockTests-mpi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/atmerhannah/argodsm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/mpi/lockTests"
	cd /home/atmerhannah/argodsm/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lockTests-mpi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/lockTests-mpi.dir/build: bin/mpi/lockTests

.PHONY : tests/CMakeFiles/lockTests-mpi.dir/build

tests/CMakeFiles/lockTests-mpi.dir/clean:
	cd /home/atmerhannah/argodsm/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/lockTests-mpi.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/lockTests-mpi.dir/clean

tests/CMakeFiles/lockTests-mpi.dir/depend:
	cd /home/atmerhannah/argodsm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atmerhannah/argodsm /home/atmerhannah/argodsm/tests /home/atmerhannah/argodsm/build /home/atmerhannah/argodsm/build/tests /home/atmerhannah/argodsm/build/tests/CMakeFiles/lockTests-mpi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/lockTests-mpi.dir/depend

