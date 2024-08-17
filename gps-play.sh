#!/bin/bash
# Invoke a container that runs gpsd and exports it to the world

# Set the variable RADIO to the serial device attached to the radio
GPS="${1:-/dev/ttyUSB0}"

FILE_PERMS=`stat -L -c "%a" ${GPS}`
if [ "${FILE_PERMS}" != "666" ]; then
  sudo chmod 666 ${GPS}
fi 
sudo chmod 777 ${GPS}

docker run -it --rm --device ${GPS} gps-play
#docker-compose run -it --rm gps-play

# Or should I do the following instead?
#docker-compose up -d 
