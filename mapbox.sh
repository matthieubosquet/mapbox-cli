#!/bin/bash

source ./util/api.sh

function Help {
  echo "$(basename $0) [-ahrt]"
  echo "  -f --> File to upload"
  echo "  -n --> MapBox Tileset name"
  echo "  -i --> MapBox Tileset ID"
  echo "  -h --> show help"
}

while getopts "f:n:i:h" option; do
  case $option in
    f  )
      load_env
      FILE=$OPTARG;;
    n  ) MAPBOX_TILESET_NAME=$OPTARG;;
    i  ) MAPBOX_TILESET_ID=$OPTARG;;
    u  )
      exit 0
      ;;
    h  )
      Help
      exit 0
      ;;
    \? )
      echo "Unknown option: -$OPTARG" >&2;
      exit 1
      ;;
    :  )
      echo "Missing option argument for -$OPTARG" >&2;
      exit 1
      ;;
    *  )
      echo "Unimplemented option: -$OPTARG" >&2;
      exit 1
      ;;
  esac
done

create_tileset_upload
