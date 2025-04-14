# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/rasp/ros2_ws/src/eProsima/Micro-CDR"
  "/home/rasp/ros2_ws/build/microcdr"
  "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix"
  "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix/tmp"
  "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp"
  "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix/src"
  "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp${cfgdir}") # cfgdir has leading slash
endif()
