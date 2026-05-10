# Import time module
import time

# Path of log file
log_file = "/var/log/syslog"

# Function to continuously read new logs
def follow(file):

    # Move cursor to end of file
    file.seek(0, 2)

    while True:

        # Read new line
        line = file.readline()

        # If no new line exists
        if not line:

            # Wait for 1 second
            time.sleep(1)

            continue

        # Return new log line
        yield line


# Open log file in read mode
with open(log_file, "r") as logfile:

    # Start monitoring logs
    loglines = follow(logfile)

    # Loop through logs
    for line in loglines:

        # Check if log contains "error"
        if "error" in line.lower():

            # Print alert
            print(f"[ALERT] Error Found: {line}")
