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
include tests/CMakeFiles/backendTests-mpi.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/backendTests-mpi.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/backendTests-mpi.dir/flags.make

tests/CMakeFiles/backendTests-mpi.dir/backend.cpp.o: tests/CMakeFiles/backendTests-mpi.dir/flags.make
tests/CMakeFiles/backendTests-mpi.dir/backend.cpp.o: ../tests/backend.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/atmerhannah/argodsm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/backendTests-mpi.dir/backend.cpp.o"
	cd /home/atmerhannah/argodsm/build/tests && /home/atmerhannah/ompi5/bin/mpic++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backendTests-mpi.dir/backend.cpp.o -c /home/atmerhannah/argodsm/tests/backend.cpp

tests/CMakeFiles/backendTests-mpi.dir/backend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backendTests-mpi.dir/backend.cpp.i"
	cd /home/atmerhannah/argodsm/build/tests && /home/atmerhannah/ompi5/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/atmerhannah/argodsm/tests/backend.cpp > CMakeFiles/backendTests-mpi.dir/backend.cpp.i

tests/CMakeFiles/backendTests-mpi.dir/backend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backendTests-mpi.dir/backend.cpp.s"
	cd /home/atmerhannah/argodsm/build/tests && /home/atmerhannah/ompi5/bin/mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/atmerhannah/argodsm/tests/backend.cpp -o CMakeFiles/backendTests-mpi.dir/backend.cpp.s

# Object files for target backendTests-mpi
backendTests__mpi_OBJECTS = \
"CMakeFiles/backendTests-mpi.dir/backend.cpp.o"

# External object files for target backendTests-mpi
backendTests__mpi_EXTERNAL_OBJECTS =

bin/mpi/backendTests: tests/CMakeFiles/backendTests-mpi.dir/backend.cpp.o
bin/mpi/backendTests: tests/CMakeFiles/backendTests-mpi.dir/build.make
bin/mpi/backendTests: lib/libargo.so
bin/mpi/backendTests: lib/libargobackend-mpi.so
bin/mpi/backendTests: lib/libgtest.a
bin/mpi/backendTests: tests/CMakeFiles/backendTests-mpi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/atmerhannah/argodsm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/mpi/backendTests"
	cd /home/atmerhannah/argodsm/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/backendTests-mpi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/backendTests-mpi.dir/build: bin/mpi/backendTests

.PHONY : tests/CMakeFiles/backendTests-mpi.dir/build

tests/CMakeFiles/backendTests-mpi.dir/clean:
	cd /home/atmerhannah/argodsm/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/backendTests-mpi.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/backendTests-mpi.dir/clean

tests/CMakeFiles/backendTests-mpi.dir/depend:
	cd /home/atmerhannah/argodsm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atmerhannah/argodsm /home/atmerhannah/argodsm/tests /home/atmerhannah/argodsm/build /home/atmerhannah/argodsm/build/tests /home/atmerhannah/argodsm/build/tests/CMakeFiles/backendTests-mpi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/backendTests-mpi.dir/depend

