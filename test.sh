#!/bin/bash

log_file="/Users/janmeshSingh/Files/Marketfeed/sample-log.txt"
index=1
> "$log_file"  # Clear the log file

while true; do 
    echo "log entry $index" >> "$log_file"
    ((index++))

    # warning log entry randomly
    if [ $((RANDOM % 3)) -eq 0 ]; then
        echo "Warning $index" >> "$log_file"
        ((index++))
    fi

    # error log entry randomly
    if [ $((RANDOM % 5)) -eq 0 ]; then
        echo "Error $index" >> "$log_file"
        ((index++))
    fi
    
    sleep 1 #delay of 1 second
done
