#!/bin/bash

# Upload the file to S3 and create tileset
function create_tileset_upload {
  echo "File to upload: ${FILE}"
  aws s3 cp "${FILE}" "s3://${AWS_BUCKET}/${AWS_KEY}" \
    --region us-east-1 && \
  sleep 10 && \
  curl --request POST \
    -H "Content-Type: application/json" \
    -H "Cache-Control: no-cache" \
    -d "{
  \"url\": \"http://${AWS_BUCKET}.s3.amazonaws.com/${AWS_KEY}\",
  \"tileset\": \"${MAPBOX_USER}.${MAPBOX_TILESET_ID}\",
  \"name\": \"${MAPBOX_TILESET_NAME}\"
}" \
  --url "https://api.mapbox.com/uploads/v1/${MAPBOX_USER}?access_token=${MAPBOX_ACCESS_TOKEN}"
}

export -f create_tileset_upload
