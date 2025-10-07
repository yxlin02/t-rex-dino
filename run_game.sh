#!/bin/bash
# Script to run Processing game with proper path handling

# Get the directory where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Use symlink to avoid spaces in path
SYMLINK="/tmp/Game"

# Check if build-only mode is requested
if [ "$1" = "--build" ]; then
    processing-java --force --sketch="$SYMLINK" --output="$SYMLINK/out" --build
else
    processing-java --force --sketch="$SYMLINK" --output="$SYMLINK/out" --run
fi
