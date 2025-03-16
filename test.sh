#!/bin/bash
# Start tmux session
tmux new-session -d -s mysession  # Create a new tmux session named "mysession"

# Run each Python script in a new tmux window
#tmux new-window -t mysession:1 -n 'script1' 'ros2 run micro_ros_agent micro_ros_agent serial --dev /dev/ttyUSB1'
tmux new-window -t mysession:2 -n 'script2' 'ros2 run teleop_twist_keyboard teleop_twist_keyboard'

# Attach to the tmux session to view all windows
tmux attach-session -t mysession