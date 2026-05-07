# Import psutil for system monitoring
import psutil

# Import time module for delays
import time

# Infinite loop for continuous monitoring
while True:

    # Get CPU usage percentage
    cpu = psutil.cpu_percent(interval=1)

    # Get RAM usage percentage
    memory = psutil.virtual_memory().percent

    # Display CPU and Memory usage
    print(f"CPU Usage: {cpu}%")
    print(f"Memory Usage: {memory}%")

    print("----------------------------")

    # Wait for 5 seconds before next check
    time.sleep(5)
