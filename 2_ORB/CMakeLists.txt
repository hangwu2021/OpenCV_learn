cmake_minimum_required(VERSION 2.8)

project(run_orb)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(run_orb test/run_orb.cpp)
target_link_libraries(run_orb ${OpenCV_LIBS})
