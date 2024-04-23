#!/bin/bash

#specify the log file path
log_file = "/var/log/auth.log"

#function to analyze the log file
analyze_log {
        #check if the log file exists and print any erros
        [-f "$log_file"] || { echo "Log file not found" ; return 1 ; }
        #analyze the log file for errors
        grep -i "error" "$log_file"
        #one can also add more analysis commands depending upon the need
}

#function to continuously monitor the log file 
monitor_log {
        #continuously analyze the log file every 5 seconds 
        while sleep 5 ; do
                analyze_log
        done    
}

#main function
main()  
{
        monitor_log
}

#call the main function
main
        
