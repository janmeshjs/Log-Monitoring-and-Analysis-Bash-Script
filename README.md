# Log Monitoring and Log Analysis Bash Script

The `log-monitor.sh` script is designed to monitor a log file continuously for new entries and perform analysis on those entries in real-time. It provides functionalities such as counting the number of errors and warnings in the log file and generating analysis reports.

## Log Monitoring and analysis script 
1. Ensure you have Bash installed on your system.
2. Clone the repository to your local machine using the following command:
   ```
   git clone https://github.com/janmeshjs/Log-Monitoring-and-Analysis-Bash-Script.git
   ```
3. Make sure the log file you want to monitor exists.
4. Update the `log_file` variable with the correct path to the `sample-log.txt` file in `log-monitor.sh`
5. Now, make sure it has permission to read. To verify use the command `ll` and see if it looks like this `-rw-r--r--`.
6. If NOT, then use the following command
      ```
   chmod +r sample-log.txt
   ```
7. Now, To make sure the script has executable permission run
   ```
   chmod +x log-monitor.sh
   ```
8. Finally, Run the script using the following command:
    ```
    ./log-monitor.sh
    ```
8. The script will start monitoring the log file in real-time, displaying the last 10 lines and updating the analysis summary whenever new entries are detected.

## Log Analysis
The log analysis includes the following details

=== Log Analysis Summary ===
- Log file name:
- Total Lines processed:
- Total Errors:
- Total Warnings:


## Test script 

1. Run the test script in another bash window and use the following command:
```
./test.sh
```
2. The script will start generating log entries and appending them to the specified log file at regular intervals.
3. The script introduces randomness for generating warning and error log entries, simulating real-world scenarios where logs may contain intermittent warnings or errors.


## Dependencies
- Bash: The script is written in Bash and requires Bash to be installed on your system.


