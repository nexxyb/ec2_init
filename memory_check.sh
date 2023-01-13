#!/bin/bash

# Get the list of all running processes
processes=$(ps aux)

# Loop through each process
while read -r line; do
  # Get the process ID
  pid=$(echo $line | awk '{print $2}')

  # Get the process name
  process_name=$(echo $line | awk '{print $11}')

  # Get the memory usage of the process
  memory=$(echo $line | awk '{print $4}')

  # Get the CPU usage of the process
  cpu=$(echo $line | awk '{print $3}')

  # Print the process ID, name, memory usage, and CPU usage
  echo "Process ID: $pid"
  echo "Process Name: $process_name"
  echo "Memory Usage: $memory"
  echo "CPU Usage: $cpu"
  echo ""
done <<< "$processes"
