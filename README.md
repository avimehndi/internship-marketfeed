#internship-marketfeed

This bash script continuously monitors the system's /var/log/auth.log file for entries containing the word "error".

How to use:
	Save the script as a file, for example, monitor_auth.sh.
	Make the script executable: chmod +x monitor_auth.sh
	Run the script: ./monitor_auth.sh
	The script will continuously monitor the log file and print any lines containing errors to the terminal.

Note: - This script requires grep to be installed on your system. One can install grep using the system's package manager. 
				For example, on Ubuntu machines, one can install grep with the following command:
				' apt install grep '
