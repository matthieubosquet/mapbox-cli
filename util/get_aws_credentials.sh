#!/bin/bash

# Get AWS credentials
# @env MAPBOX_USER The Mapbox user
# @env MAPBOX_ACCESS_TOKEN The Mapbox access token
function get_aws_credentials {
  curl \
    --request POST \
    --url "https://api.mapbox.com/uploads/v1/${MAPBOX_USER}/credentials?access_token=${MAPBOX_ACCESS_TOKEN}"
}

export -f get_aws_credentials
