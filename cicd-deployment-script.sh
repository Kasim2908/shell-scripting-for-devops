# Import os module
import os

# List of deployment commands
commands = [

    # Pull latest code from GitHub
    "git pull origin main",

    # Build Docker image
    "docker build -t myapp .",

    # Stop existing containers
    "docker-compose down",

    # Start new containers
    "docker-compose up -d"
]

# Loop through commands
for cmd in commands:

    # Print current command
    print(f"Running: {cmd}")

    # Execute command
    os.system(cmd)

# Final success message
print("Deployment completed successfully!")
