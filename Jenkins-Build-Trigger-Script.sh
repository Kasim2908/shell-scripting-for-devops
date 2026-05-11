# Import requests library
import requests

# Jenkins build URL
jenkins_url = "http://localhost:8080/job/test/build"

# Jenkins username
username = "admin"

# Jenkins API token
token = "your_api_token"

# Trigger Jenkins job
response = requests.post(
    jenkins_url,
    auth=(username, token)
)

# Print response code
print(f"Status Code: {response.status_code}")

# Check build trigger success
if response.status_code == 201:
    print("Jenkins build triggered successfully!")
else:
    print("Failed to trigger Jenkins build.")
