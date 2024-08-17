#!/bin/bash
# Start gpsd in the container

GPS=${1:-/dev/ttyACM0}

docker-compose run --rm --name gps-server gps-server gpsd -N -G ${GPS}
