#! /bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running thsi script: $USER"
echo "hostname: $HOSTNAME"
echo "process ID of the current shell script: $$"
sleep 60 &
echo "process ID of last background command: $!"

# To check exit status of a previous command