cmake_minimum_required(VERSION 2.8)

project(4_VisualOdometry)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# OpenCV
find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(run_vo test/3_calcOpticalFlowPyrLK.cpp)
target_link_libraries(run_vo ${OpenCV_LIBS})
