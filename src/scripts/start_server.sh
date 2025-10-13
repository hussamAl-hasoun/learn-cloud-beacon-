#!/bin/bash
cd /home/ec2-user/my-flask-app
# Start the Flask app in the background
nohup python3 app.py > /dev/null 2>&1 &
