#!/bin/bash
# Stop any running process on port 5000
fuser -k 5000/tcp || true
