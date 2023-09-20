#!/bin/bash
#The first line specifies that the script is written in Bash.
# Check if the service is already running
#The second line checks if the MySQL service is already running.
if ps -ef | grep -q mysqld; then
#The third line stops the MySQL service if it is already running.

  echo "Service is already running. Stopping..."
  # Stop the service
  sudo systemctl stop mysql
#The fourth line starts the MySQL service if it is not already running.
else
  echo "Starting service..."
  # Start the service
  sudo systemctl start mysql
fi
# Store the PID of the running process in a file
pid=$(pgrep mysql)
echo $pid > /var/run/mysql.pid
#The fifth line stores the PID of the running process in a file.