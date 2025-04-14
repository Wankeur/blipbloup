# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/rasp/ros2_ws/src/uros/micro-ROS-demos/rclc/autodiscover_agent"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/src/autodiscover_agent-build"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/temp_install"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/tmp"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/src/autodiscover_agent-stamp"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/src"
  "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/src/autodiscover_agent-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/src/autodiscover_agent-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/rasp/ros2_ws/build/micro_ros_demos_rclc/autodiscover_agent/src/autodiscover_agent-stamp${cfgdir}") # cfgdir has leading slash
endif()
