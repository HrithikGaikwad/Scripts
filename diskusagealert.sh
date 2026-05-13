#!/bin/bash
# This script creates a alert for disk usage

usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt 80 ]; then
echo "Disk usage is above 80%:"
else
echo "Disk usage is within limits:"
fi
