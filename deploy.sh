#!/bin/bash

# --- The Professional Deployment Script ---

echo "✅ Deployment started..."

# Go to the application directory
# THIS IS THE CORRECT PATH ON YOUR ALIBABA SERVER
cd /root/learn-cloud-beacon-

echo "Pulling latest code from GitHub..."
git pull origin main

# --- Virtual Environment Setup ---
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
fuser -k 5000/tcp || true
nohup venv/bin/python app.py > /dev/null 2>&1 &

echo "🚀 Deployment successful!"
