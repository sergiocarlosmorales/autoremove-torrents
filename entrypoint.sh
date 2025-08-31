#!/bin/bash

# Default interval is 300 seconds (5 minutes), configurable via INTERVAL env var
INTERVAL=${INTERVAL:-300}

echo "Sleeping set to $INTERVAL seconds"

# Run the command in a loop, passing any additional arguments (e.g., --conf=/path/to/config.yml)
while true; do
  autoremove-torrents "$@"
  sleep "$INTERVAL"
done