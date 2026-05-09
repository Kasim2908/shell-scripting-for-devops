# Import Kubernetes modules
from kubernetes import client, config

# Load kubeconfig file
# This connects Python with your Kubernetes cluster
config.load_kube_config()

# Create CoreV1 API object
v1 = client.CoreV1Api()

# Fetch all pods from all namespaces
pods = v1.list_pod_for_all_namespaces(watch=False)

# Loop through each pod
for pod in pods.items:

    # Get pod name
    pod_name = pod.metadata.name

    # Get current pod status
    pod_status = pod.status.phase

    # Print pod information
    print(f"Pod Name: {pod_name}")
    print(f"Status: {pod_status}")

    print("---------------------")

    # Check if pod is unhealthy
    if pod_status != "Running":
        print(f"WARNING: {pod_name} is not healthy!")
