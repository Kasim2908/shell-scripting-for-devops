# Import docker SDK
import docker

# Connect to local Docker engine
client = docker.from_env()

# Get all containers including stopped ones
containers = client.containers.list(all=True)

# Loop through all containers
for container in containers:

    # Check if container is stopped/exited
    if container.status == "exited":

        # Print container name before deleting
        print(f"Removing container: {container.name}")

        # Remove container
        container.remove()

# Final success message
print("Stopped containers cleaned successfully!")
