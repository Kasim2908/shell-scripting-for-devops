# Import requests module
import requests

# Slack webhook URL
webhook_url = "YOUR_WEBHOOK_URL"

# Message payload
message = {
    "text": "Deployment completed successfully!"
}

# Send POST request to Slack
response = requests.post(
    webhook_url,
    json=message
)

# Check request status
if response.status_code == 200:
    print("Slack notification sent successfully!")
else:
    print("Failed to send notification.")
