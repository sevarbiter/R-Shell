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
CMAKE_COMMAND = /usr/bin/cmake3

# The command to remove a file.
RM = /usr/bin/cmake3 -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/csmajs/wdevo001/assignment-cs-100-wes-will

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/csmajs/wdevo001/assignment-cs-100-wes-will

# Include any dependencies generated for this target.
include CMakeFiles/rshell.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rshell.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rshell.dir/flags.make

CMakeFiles/rshell.dir/src/main.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rshell.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/main.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/main.cpp

CMakeFiles/rshell.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/main.cpp > CMakeFiles/rshell.dir/src/main.cpp.i

CMakeFiles/rshell.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/main.cpp -o CMakeFiles/rshell.dir/src/main.cpp.s

CMakeFiles/rshell.dir/src/connector.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/connector.cpp.o: src/connector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rshell.dir/src/connector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/connector.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/connector.cpp

CMakeFiles/rshell.dir/src/connector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/connector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/connector.cpp > CMakeFiles/rshell.dir/src/connector.cpp.i

CMakeFiles/rshell.dir/src/connector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/connector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/connector.cpp -o CMakeFiles/rshell.dir/src/connector.cpp.s

CMakeFiles/rshell.dir/src/command.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/command.cpp.o: src/command.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rshell.dir/src/command.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/command.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/command.cpp

CMakeFiles/rshell.dir/src/command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/command.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/command.cpp > CMakeFiles/rshell.dir/src/command.cpp.i

CMakeFiles/rshell.dir/src/command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/command.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/command.cpp -o CMakeFiles/rshell.dir/src/command.cpp.s

CMakeFiles/rshell.dir/src/and.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/and.cpp.o: src/and.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rshell.dir/src/and.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/and.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/and.cpp

CMakeFiles/rshell.dir/src/and.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/and.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/and.cpp > CMakeFiles/rshell.dir/src/and.cpp.i

CMakeFiles/rshell.dir/src/and.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/and.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/and.cpp -o CMakeFiles/rshell.dir/src/and.cpp.s

CMakeFiles/rshell.dir/src/or.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/or.cpp.o: src/or.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rshell.dir/src/or.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/or.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/or.cpp

CMakeFiles/rshell.dir/src/or.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/or.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/or.cpp > CMakeFiles/rshell.dir/src/or.cpp.i

CMakeFiles/rshell.dir/src/or.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/or.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/or.cpp -o CMakeFiles/rshell.dir/src/or.cpp.s

CMakeFiles/rshell.dir/src/semiColon.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/semiColon.cpp.o: src/semiColon.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/rshell.dir/src/semiColon.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/semiColon.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/semiColon.cpp

CMakeFiles/rshell.dir/src/semiColon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/semiColon.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/semiColon.cpp > CMakeFiles/rshell.dir/src/semiColon.cpp.i

CMakeFiles/rshell.dir/src/semiColon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/semiColon.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/semiColon.cpp -o CMakeFiles/rshell.dir/src/semiColon.cpp.s

CMakeFiles/rshell.dir/src/exit.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/exit.cpp.o: src/exit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/rshell.dir/src/exit.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/exit.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/exit.cpp

CMakeFiles/rshell.dir/src/exit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/exit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/exit.cpp > CMakeFiles/rshell.dir/src/exit.cpp.i

CMakeFiles/rshell.dir/src/exit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/exit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/exit.cpp -o CMakeFiles/rshell.dir/src/exit.cpp.s

CMakeFiles/rshell.dir/src/paren.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/paren.cpp.o: src/paren.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/rshell.dir/src/paren.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/paren.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/paren.cpp

CMakeFiles/rshell.dir/src/paren.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/paren.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/paren.cpp > CMakeFiles/rshell.dir/src/paren.cpp.i

CMakeFiles/rshell.dir/src/paren.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/paren.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/paren.cpp -o CMakeFiles/rshell.dir/src/paren.cpp.s

CMakeFiles/rshell.dir/src/test.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/test.cpp.o: src/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/rshell.dir/src/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/test.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/test.cpp

CMakeFiles/rshell.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/test.cpp > CMakeFiles/rshell.dir/src/test.cpp.i

CMakeFiles/rshell.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/test.cpp -o CMakeFiles/rshell.dir/src/test.cpp.s

CMakeFiles/rshell.dir/src/redirection.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/redirection.cpp.o: src/redirection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/rshell.dir/src/redirection.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/redirection.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/redirection.cpp

CMakeFiles/rshell.dir/src/redirection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/redirection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/redirection.cpp > CMakeFiles/rshell.dir/src/redirection.cpp.i

CMakeFiles/rshell.dir/src/redirection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/redirection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/redirection.cpp -o CMakeFiles/rshell.dir/src/redirection.cpp.s

CMakeFiles/rshell.dir/src/left.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/left.cpp.o: src/left.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/rshell.dir/src/left.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/left.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/left.cpp

CMakeFiles/rshell.dir/src/left.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/left.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/left.cpp > CMakeFiles/rshell.dir/src/left.cpp.i

CMakeFiles/rshell.dir/src/left.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/left.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/left.cpp -o CMakeFiles/rshell.dir/src/left.cpp.s

CMakeFiles/rshell.dir/src/right.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/right.cpp.o: src/right.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/rshell.dir/src/right.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/right.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/right.cpp

CMakeFiles/rshell.dir/src/right.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/right.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/right.cpp > CMakeFiles/rshell.dir/src/right.cpp.i

CMakeFiles/rshell.dir/src/right.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/right.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/right.cpp -o CMakeFiles/rshell.dir/src/right.cpp.s

CMakeFiles/rshell.dir/src/pipe.cpp.o: CMakeFiles/rshell.dir/flags.make
CMakeFiles/rshell.dir/src/pipe.cpp.o: src/pipe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/rshell.dir/src/pipe.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rshell.dir/src/pipe.cpp.o -c /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/pipe.cpp

CMakeFiles/rshell.dir/src/pipe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rshell.dir/src/pipe.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/pipe.cpp > CMakeFiles/rshell.dir/src/pipe.cpp.i

CMakeFiles/rshell.dir/src/pipe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rshell.dir/src/pipe.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/wdevo001/assignment-cs-100-wes-will/src/pipe.cpp -o CMakeFiles/rshell.dir/src/pipe.cpp.s

# Object files for target rshell
rshell_OBJECTS = \
"CMakeFiles/rshell.dir/src/main.cpp.o" \
"CMakeFiles/rshell.dir/src/connector.cpp.o" \
"CMakeFiles/rshell.dir/src/command.cpp.o" \
"CMakeFiles/rshell.dir/src/and.cpp.o" \
"CMakeFiles/rshell.dir/src/or.cpp.o" \
"CMakeFiles/rshell.dir/src/semiColon.cpp.o" \
"CMakeFiles/rshell.dir/src/exit.cpp.o" \
"CMakeFiles/rshell.dir/src/paren.cpp.o" \
"CMakeFiles/rshell.dir/src/test.cpp.o" \
"CMakeFiles/rshell.dir/src/redirection.cpp.o" \
"CMakeFiles/rshell.dir/src/left.cpp.o" \
"CMakeFiles/rshell.dir/src/right.cpp.o" \
"CMakeFiles/rshell.dir/src/pipe.cpp.o"

# External object files for target rshell
rshell_EXTERNAL_OBJECTS =

rshell: CMakeFiles/rshell.dir/src/main.cpp.o
rshell: CMakeFiles/rshell.dir/src/connector.cpp.o
rshell: CMakeFiles/rshell.dir/src/command.cpp.o
rshell: CMakeFiles/rshell.dir/src/and.cpp.o
rshell: CMakeFiles/rshell.dir/src/or.cpp.o
rshell: CMakeFiles/rshell.dir/src/semiColon.cpp.o
rshell: CMakeFiles/rshell.dir/src/exit.cpp.o
rshell: CMakeFiles/rshell.dir/src/paren.cpp.o
rshell: CMakeFiles/rshell.dir/src/test.cpp.o
rshell: CMakeFiles/rshell.dir/src/redirection.cpp.o
rshell: CMakeFiles/rshell.dir/src/left.cpp.o
rshell: CMakeFiles/rshell.dir/src/right.cpp.o
rshell: CMakeFiles/rshell.dir/src/pipe.cpp.o
rshell: CMakeFiles/rshell.dir/build.make
rshell: CMakeFiles/rshell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable rshell"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rshell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rshell.dir/build: rshell

.PHONY : CMakeFiles/rshell.dir/build

CMakeFiles/rshell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rshell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rshell.dir/clean

CMakeFiles/rshell.dir/depend:
	cd /home/csmajs/wdevo001/assignment-cs-100-wes-will && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/csmajs/wdevo001/assignment-cs-100-wes-will /home/csmajs/wdevo001/assignment-cs-100-wes-will /home/csmajs/wdevo001/assignment-cs-100-wes-will /home/csmajs/wdevo001/assignment-cs-100-wes-will /home/csmajs/wdevo001/assignment-cs-100-wes-will/CMakeFiles/rshell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rshell.dir/depend
