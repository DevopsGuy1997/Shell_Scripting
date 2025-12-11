#!/bin/bash

# Outer Loop: Runs indefinitely (or until a condition is met)
while true
do
    echo "--- Checking Services ---"
    
    # Inner Loop: Iterates over a list of services
    for service in webapp db proxy
    do
        # Check if the service is running (Example: status command)
        if systemctl is-active --quiet "$service"; then
            echo "Service '$service' is UP."
        else
            echo "Service '$service' is DOWN!"
        fi
    done
    
    echo "-------------------------"
    # Wait for 60 seconds before checking again
    sleep 60 
done
