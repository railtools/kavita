#!/bin/bash

# Wait for Railway volume to bind
TRIES=0
while [ ! -d /kavita ] && [ "$TRIES" -lt 10 ]; do
  echo "Waiting for /kavita to be mounted..."
  sleep 1
  TRIES=$((TRIES+1))
done

# Create required subfolders in mounted volume
mkdir -p /kavita/config /kavita/manga /kavita/books /kavita/comics

# Optional: set permissions
chown -R 1000:1000 /kavita

# ✅ Start Kavita manually
exec dotnet Kavita.dll
