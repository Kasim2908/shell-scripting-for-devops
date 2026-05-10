# Import shutil for copying files
import shutil

# Import datetime for timestamp
import datetime

# Source folder path
source = "/home/kasim/project"

# Destination backup folder
destination = f"/home/kasim/backups/backup-{datetime.date.today()}"

# Copy complete directory
shutil.copytree(source, destination)

# Print success message
print("Backup completed successfully!")
