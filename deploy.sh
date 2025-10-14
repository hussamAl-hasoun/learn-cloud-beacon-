#!/bin/bash

# --- The Professional Deployment Script ---

echo "✅ Deployment started..."

# Go to the application directory
cd /root/learn-cloud-beacon-

echo "Pulling latest code from GitHub..."
git pull origin main

# --- Virtual Environment Setup ---
# Check if the virtual environment directory exists, if not, create it
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

echo "Activating virtual environment..."
source venv/bin/activate

# --- Dependency Installation ---
echo "Installing/updating dependencies inside the virtual environment..."
pip install -r requirements.txt

# --- Application Restart ---
echo "Restarting the Flask application..."
# Stop any old running process on port 5000
fuser -k 5000/tcp || true

# Start the new version using the Python from the virtual environment
nohup venv/bin/python app.py > /dev/null 2>&1 &

echo "🚀 Deployment successful!"
