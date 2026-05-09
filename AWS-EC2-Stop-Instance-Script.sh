# Import boto3 AWS SDK
import boto3

# Create EC2 client
ec2 = boto3.client('ec2')

# Replace with your EC2 instance ID
instance_id = "i-xxxxxxxxxxxxx"

# Stop the EC2 instance
response = ec2.stop_instances(
    InstanceIds=[instance_id]
)

# Print success message
print("EC2 instance stopping initiated.")

# Print AWS response (optional)
print(response)
