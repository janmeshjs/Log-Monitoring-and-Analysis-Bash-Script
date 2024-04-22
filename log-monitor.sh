#!/bin/bash

# path to the log file
log_file="/Users/janmeshSingh/Files/Marketfeed/sample-log.txt"

# modification time of the log file
prev_mod_time=$(stat -c %Y "$log_file")

# Function to analyze the log file
analyze_log() {
    echo "=== Log Analysis Summary ==="

# counting errors

 count_errors=$(grep -c -Ei "Error|failed" "$log_file")

# counting warnings
 warning=$(grep -c -Ei "Warning" "$log_file") 


# printing final analysis report 
      echo "Log file name: $(basename "$log_file")"
      echo "Total lines processed: $(wc -l < "$log_file")"
      echo "Total error: $count_errors"
      echo "Total Warnings: $warning"

}

# Main loop to monitor the log file
echo "Monitoring log file: $log_file"
while true; do

    # Checking if the log file exists
    if [ ! -f "$log_file" ]; then
        echo "Error: Log file '$log_file' not found."
        exit 1
    fi

    # Checking if the log file is readable
    if [ ! -r "$log_file" ]; then
        echo "Error: Log file is not readable."
        return 1
    fi
    # Check if the file has been modified by comparing the modification timestamps
    curr_mod_time=$(stat -c %Y "$log_file")
    if [ $curr_mod_time -gt $prev_mod_time ]; then
        clear  
        # Clearing the screen and displaying the last 10 lines of the log file
        tail -n 10 "$log_file"
        analyze_log
        # updating the timestamps
        prev_mod_time=$curr_mod_time
    fi
        # delay of 1 second before checking again
    sleep 1  
done

# Trap SIGINT (Ctrl+C) to exit gracefully
trap 'echo -e "\nExiting..."; exit 0' SIGINT
