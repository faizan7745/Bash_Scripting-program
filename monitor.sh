#!/bin/bash

# Specify the log file to monitor
Log_File="/var/log/syslog"
# Keywords or patterns to search for
PATTERNS=("error" "HTTP" "fail")
# Function named monitor_analyze_log to monitor and analyze the log file
monitor_analyze_log() {
    echo "Monitoring and analyzing $Log_File for  new log"

    # One Temporary file is mentioned to store log_messages
    TEMP_FILE="/tmp/log_message.tmp"

    # looping statement named while loop is used for continously looping
    while true; do
        # Use tail to display new log entries and redirect to a temporary file
        tail -n 20 "$Log_File" > "$TEMP_FILE"
        # Now to analyze log messages
        analyze_log "$TEMP_FILE"

         # Sleep for 10 sec & checking again
        sleep 10


    done
}

# Now Function named analyze_lof is used for analyzing logmessages
analyze_log() {
    echo "Occurence Report:"

    # Go througheach line to search and count occurrences of pattern
    for patterns in "${PATTERNS[@]}"; do
        count=$(grep -c "$patterns" "$1")
        echo "Pattern '$patterns' occurred $count times."
    done
}
# Trap Ctrl+C to stop monitoring
trap 'echo "Stopping monitoring and analysis..."; exit 0' SIGINT

# Start monitoring and analyzing the log file
monitor_analyze_log
