# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = H:\NSUProgLabs\lab1-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = H:\NSUProgLabs\lab1-1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab1_1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab1_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1_1.dir/flags.make

CMakeFiles/lab1_1.dir/main.c.obj: CMakeFiles/lab1_1.dir/flags.make
CMakeFiles/lab1_1.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\lab1-1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab1_1.dir/main.c.obj"
	C:\PROGRA~1\HASKEL~1\847A5C~1.3\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab1_1.dir\main.c.obj   -c H:\NSUProgLabs\lab1-1\main.c

CMakeFiles/lab1_1.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_1.dir/main.c.i"
	C:\PROGRA~1\HASKEL~1\847A5C~1.3\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\lab1-1\main.c > CMakeFiles\lab1_1.dir\main.c.i

CMakeFiles/lab1_1.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_1.dir/main.c.s"
	C:\PROGRA~1\HASKEL~1\847A5C~1.3\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\lab1-1\main.c -o CMakeFiles\lab1_1.dir\main.c.s

CMakeFiles/lab1_1.dir/finder.c.obj: CMakeFiles/lab1_1.dir/flags.make
CMakeFiles/lab1_1.dir/finder.c.obj: ../finder.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=H:\NSUProgLabs\lab1-1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab1_1.dir/finder.c.obj"
	C:\PROGRA~1\HASKEL~1\847A5C~1.3\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab1_1.dir\finder.c.obj   -c H:\NSUProgLabs\lab1-1\finder.c

CMakeFiles/lab1_1.dir/finder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_1.dir/finder.c.i"
	C:\PROGRA~1\HASKEL~1\847A5C~1.3\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E H:\NSUProgLabs\lab1-1\finder.c > CMakeFiles\lab1_1.dir\finder.c.i

CMakeFiles/lab1_1.dir/finder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_1.dir/finder.c.s"
	C:\PROGRA~1\HASKEL~1\847A5C~1.3\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S H:\NSUProgLabs\lab1-1\finder.c -o CMakeFiles\lab1_1.dir\finder.c.s

# Object files for target lab1_1
lab1_1_OBJECTS = \
"CMakeFiles/lab1_1.dir/main.c.obj" \
"CMakeFiles/lab1_1.dir/finder.c.obj"

# External object files for target lab1_1
lab1_1_EXTERNAL_OBJECTS =

lab1_1.exe: CMakeFiles/lab1_1.dir/main.c.obj
lab1_1.exe: CMakeFiles/lab1_1.dir/finder.c.obj
lab1_1.exe: CMakeFiles/lab1_1.dir/build.make
lab1_1.exe: CMakeFiles/lab1_1.dir/linklibs.rsp
lab1_1.exe: CMakeFiles/lab1_1.dir/objects1.rsp
lab1_1.exe: CMakeFiles/lab1_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=H:\NSUProgLabs\lab1-1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable lab1_1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab1_1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1_1.dir/build: lab1_1.exe

.PHONY : CMakeFiles/lab1_1.dir/build

CMakeFiles/lab1_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab1_1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lab1_1.dir/clean

CMakeFiles/lab1_1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" H:\NSUProgLabs\lab1-1 H:\NSUProgLabs\lab1-1 H:\NSUProgLabs\lab1-1\cmake-build-debug H:\NSUProgLabs\lab1-1\cmake-build-debug H:\NSUProgLabs\lab1-1\cmake-build-debug\CMakeFiles\lab1_1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1_1.dir/depend

