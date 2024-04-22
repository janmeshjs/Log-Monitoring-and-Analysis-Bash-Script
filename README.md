# Log Monitor Script

## Overview
The `log-monitor.sh` script is designed to monitor a log file continuously for new entries and perform basic analysis on those entries. It provides functionalities such as counting occurrences of specific keywords or patterns and generating summary reports.

## Usage
1. Ensure you have Bash installed on your system.
2. Make sure the log file you want to monitor exists and is accessible.
3. To make it accessible with executable permission run "chmod +x log-monitor.sh"
3. Modify the `log_file` variable in the script to point to your log file. Here, it is "sample-log.txt"
4. Run the script using the following command:
"./log-monitor.sh"
5. The script will start monitoring the log file in real-time, displaying the last 10 lines and updating the analysis summary whenever new entries are detected.

## Additional Features
- Error handling: The script includes error handling to ensure it gracefully handles scenarios such as missing or unreadable log files.
- Customizable: You can customize the script to analyze specific log patterns by modifying the grep commands and summary report generation logic.

## Dependencies
- Bash: The script is written in Bash and requires Bash to be installed on your system.

## License
This script is provided under the [MIT License](LICENSE).
