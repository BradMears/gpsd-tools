#!/bin/bash

GPS=${1:-/dev/ttyACM0}

docker build --tag gpsd-tools:latest --build-arg GPS_DEVICE=${GPS} .
