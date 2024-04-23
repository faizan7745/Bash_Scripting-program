1] Save this script to a file, for example, monitor_log.sh, 
2] And make it executable using the following command: using $chmod +x monitor_log.sh
3] we can  run the script to start monitoring and analyzing the specified log file: using $./monitor_log.sh or bash monitor_log.sh

Description:-
-While the script is running, it will continuously monitor the log file
-The log will save in  for eg /tmp/log_message.tmp folder
-It will give new entries of log.
-We can analyze the log messages for the specified pattern,
-It will display a report with the counts of each pattern. 
-To stop the monitoring and analysis, press Ctrl+C. The trap command will catch the Ctrl+C signal and stop the script 






