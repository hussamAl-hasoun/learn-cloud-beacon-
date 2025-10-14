#!/bin/bash

echo "✅ Deployment started..."

# Go to the app directory
# تأكد من أن هذا هو المسار الصحيح لمشروعك على الخادم
cd /path/to/your/project/learn-cloud-beacon-

echo "Pulling latest code from GitHub..."
git pull origin main

echo "Installing/updating dependencies..."
pip3 install -r requirements.txt

echo "Restarting the Flask application..."
# Stop any old running process on port 5000
fuser -k 5000/tcp || true

# Start the new version in the background
nohup python3 app.py > /dev/null 2>&1 &

echo "🚀 Deployment successful!"
