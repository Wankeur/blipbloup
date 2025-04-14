# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/rasp/ros2_ws/src/uros/micro-ROS-demos/rclc/string_subscriber"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/src/string_subscriber-build"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/temp_install"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/tmp"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/src/string_subscriber-stamp"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/src"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/src/string_subscriber-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/src/string_subscriber-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/string_subscriber/src/string_subscriber-stamp${cfgdir}") # cfgdir has leading slash
endif()
