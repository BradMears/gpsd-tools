#!/bin/bash
# Start one of the gps clients like cgps or gpsmon in the container

CLIENT=${1:-cgps}

docker-compose run --name gps-client --rm gps-client ${CLIENT}
