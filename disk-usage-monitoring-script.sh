# Import shutil module
# It helps us get disk usage information
import shutil

# Define warning threshold percentage
threshold = 80

# Get total, used, and free disk space
# "/" means root directory (Linux)
total, used, free = shutil.disk_usage("/")

# Calculate used disk percentage
used_percent = (used / total) * 100

# Print disk usage
print(f"Disk Usage: {used_percent:.2f}%")

# Check if usage exceeds threshold
if used_percent > threshold:
    print("WARNING: Disk usage exceeded threshold!")
else:
    print("Disk usage is under control.")
