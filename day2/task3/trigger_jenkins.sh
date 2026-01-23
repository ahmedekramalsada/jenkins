#!/bin/bash

# Jenkins Configuration
JENKINS_URL="http://localhost:8080"
JOB_NAME="my-pipeline-job"
USER_NAME="admin"
API_TOKEN="your_api_token_here"

echo "Triggering Jenkins job: $JOB_NAME"

# Triggering the build via API
curl -X POST -L "${JENKINS_URL}/job/${JOB_NAME}/build" \
     --user "${USER_NAME}:${API_TOKEN}"

if [ $? -eq 0 ]; then
    echo "SUCCESS: Build triggered."
else
    echo "ERROR: Failed to trigger build."
fi
