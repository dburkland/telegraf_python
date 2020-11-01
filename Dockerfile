# Use official Alpine release
FROM telegraf:latest

# Maintainer
LABEL maintainer="Dan Burkland <dburkland@dburkland.com>"

# Change working dir
WORKDIR /root

# Update apt and install python3, python3-pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Install the appropriate python modules
RUN pip3 install sense_energy

# Expose ports
EXPOSE 8125/udp 8092/udp 8094

# Set entrypoint and cmd
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
