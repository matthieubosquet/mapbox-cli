#!/bin/bash

# AWS credentials loader
source ./util/get_aws_credentials.sh

# Load environment
function load_env {
  source ./env.local.sh

  # AWS credentials
  AWS=$(get_aws_credentials)
  AWS_ACCESS_KEY_ID=$(echo $AWS |  jq -r ".accessKeyId")
  AWS_SECRET_ACCESS_KEY=$(echo $AWS |  jq -r ".secretAccessKey")
  AWS_SESSION_TOKEN=$(echo $AWS |  jq -r ".sessionToken")

  # AWS details
  AWS_BUCKET=$(echo $AWS |  jq -r ".bucket")
  AWS_KEY=$(echo $AWS |  jq -r ".key")

  echo "MAPBOX_USER=${MAPBOX_USER}"
  echo "MAPBOX_ACCESS_TOKEN=${MAPBOX_ACCESS_TOKEN}"
  echo "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}"
  echo "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}"
  echo "AWS_SESSION_TOKEN=${AWS_SESSION_TOKEN}"
  echo "AWS_BUCKET=${AWS_BUCKET}"
  echo "AWS_KEY=${AWS_KEY}"
  echo ""
}

export -f load_env
