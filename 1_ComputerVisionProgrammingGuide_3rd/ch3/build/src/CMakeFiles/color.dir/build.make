# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build

# Include any dependencies generated for this target.
include src/CMakeFiles/color.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/color.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/color.dir/flags.make

src/CMakeFiles/color.dir/ColorDetector.cpp.o: src/CMakeFiles/color.dir/flags.make
src/CMakeFiles/color.dir/ColorDetector.cpp.o: ../src/ColorDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/color.dir/ColorDetector.cpp.o"
	cd /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color.dir/ColorDetector.cpp.o -c /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/src/ColorDetector.cpp

src/CMakeFiles/color.dir/ColorDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color.dir/ColorDetector.cpp.i"
	cd /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/src/ColorDetector.cpp > CMakeFiles/color.dir/ColorDetector.cpp.i

src/CMakeFiles/color.dir/ColorDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color.dir/ColorDetector.cpp.s"
	cd /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/src/ColorDetector.cpp -o CMakeFiles/color.dir/ColorDetector.cpp.s

# Object files for target color
color_OBJECTS = \
"CMakeFiles/color.dir/ColorDetector.cpp.o"

# External object files for target color
color_EXTERNAL_OBJECTS =

../lib/libcolor.so: src/CMakeFiles/color.dir/ColorDetector.cpp.o
../lib/libcolor.so: src/CMakeFiles/color.dir/build.make
../lib/libcolor.so: /usr/local/lib/libopencv_stitching.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_superres.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_videostab.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_aruco.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_bgsegm.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_bioinspired.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_ccalib.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_dpm.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_face.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_freetype.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_fuzzy.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_hdf.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_hfs.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_img_hash.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_line_descriptor.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_optflow.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_reg.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_rgbd.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_saliency.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_sfm.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_stereo.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_structured_light.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_surface_matching.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_tracking.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_xfeatures2d.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_ximgproc.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_xobjdetect.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_xphoto.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_highgui.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_videoio.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_shape.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_viz.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_video.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_datasets.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_plot.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_text.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_dnn.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_ml.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_imgcodecs.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_objdetect.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_calib3d.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_features2d.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_flann.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_photo.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_imgproc.so.3.4.15
../lib/libcolor.so: /usr/local/lib/libopencv_core.so.3.4.15
../lib/libcolor.so: src/CMakeFiles/color.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libcolor.so"
	cd /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/color.dir/build: ../lib/libcolor.so

.PHONY : src/CMakeFiles/color.dir/build

src/CMakeFiles/color.dir/clean:
	cd /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src && $(CMAKE_COMMAND) -P CMakeFiles/color.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/color.dir/clean

src/CMakeFiles/color.dir/depend:
	cd /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3 /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/src /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src /home/hangwu/projects/slam_test/OpenCV2_learn/1_ComputerVisionProgrammingGuide_3rd/ch3/build/src/CMakeFiles/color.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/color.dir/depend

