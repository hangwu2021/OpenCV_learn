cmake_minimum_required(VERSION 3.0)

project(ch2)

set(CMAKE_BUILD_TYPE "Debug")
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# OpenCV
find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(run_cv src/ch4/4-5.cpp)

target_link_libraries(run_cv ${OpenCV_LIBS})
