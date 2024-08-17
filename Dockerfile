FROM alpine:latest

ENV DEBIAN_FRONTEND=noninteractive

# Get packages
RUN apk update
RUN apk add gpsd gpsd-clients 

# Configure gpsd ports
EXPOSE 2947/tcp

CMD ["/bin/ash"]
