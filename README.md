# Log Monitoring and Log Analysis Bash Script

The `log-monitor.sh` script is designed to monitor a log file continuously for new entries and perform basic analysis on those entries. It provides functionalities such as counting occurrences of specific keywords or patterns and generating analysis reports.

## Log Monitoring and analysis script 
1. Ensure you have Bash installed on your system.
2. Clone the repository to your local machine using the following command:
   ```
   git clone [https://github.com/janmeshjs/Marketfeed.git](https://github.com/janmeshjs/Log-Monitoring-and-Analysis-Bash-Script.git)
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

## Additional Features
- Error handling: The script includes error handling to ensure it gracefully handles scenarios such as missing or unreadable log files.
- Customizable: You can customize the script to analyze specific log patterns by modifying the grep commands and summary report generation logic.


## Test script 

1. Run the test script in another bash window and use the following command:
```
./test.sh
```
2. The script will start generating log entries and appending them to the specified log file at regular intervals.
3. The script introduces randomness for generating warning and error log entries, simulating real-world scenarios where logs may contain intermittent warnings or errors.


## Dependencies
- Bash: The script is written in Bash and requires Bash to be installed on your system.


