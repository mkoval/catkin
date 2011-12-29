#
#  TOPLEVEL cmakelists
#
cmake_minimum_required(VERSION 2.8)
cmake_policy(SET CMP0003 NEW)
cmake_policy(SET CMP0011 NEW)

set(CATKIN YES)
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR} ${CMAKE_BINARY_DIR}/cmake)

if (IS_DIRECTORY ${CMAKE_SOURCE_DIR}/catkin)
  message(STATUS "+++ catkin")
  set(CATKIN_BUILD_PROJECTS "ALL" CACHE STRING
    "List of projects to build, or ALL for all.  Use to completely exclude certain projects from cmake traversal.")
  add_subdirectory(catkin)
else()
  find_package(catkin)
endif()

catkin_workspace()

