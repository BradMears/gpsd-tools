#!/bin/bash
# Start a shell in a container. Defaults to the gps-server container

export CONTAINER=${1:-gps-server}
docker exec -it ${CONTAINER} ash
