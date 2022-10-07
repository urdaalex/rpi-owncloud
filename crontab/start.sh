#!/bin/bash

# Save the environment variables, for CRON job
printenv > /etc/environment

# Select the crontab file based on the environment
CRON_FILE="/crontab.prod"

echo "Loading crontab file: $CRON_FILE"

# Load the crontab file
crontab $CRON_FILE

# Start cron
echo "Starting cron..."
crond -f