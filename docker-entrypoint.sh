#!/bin/bash

# Wait for bind mount to be available
TRIES=0
while [ ! -d /kavita ] && [ "$TRIES" -lt 10 ]; do
  echo "Waiting for /kavita to be mounted..."
  sleep 1
  TRIES=$((TRIES+1))
done

# Create required subdirs inside the volume
mkdir -p /kavita/config /kavita/manga /kavita/books /kavita/comics

# (Optional) Set ownership if app expects UID 1000
chown -R 1000:1000 /kavita

# Start Kavita (inherits default CMD from base image)
exec /init
