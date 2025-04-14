# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/rasp/ros2_ws/src/uros/micro-ROS-demos/rclc/static_type_handling"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/src/static_type_handling-build"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/temp_install"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/tmp"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/src/static_type_handling-stamp"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/src"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/src/static_type_handling-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/src/static_type_handling-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/static_type_handling/src/static_type_handling-stamp${cfgdir}") # cfgdir has leading slash
endif()
