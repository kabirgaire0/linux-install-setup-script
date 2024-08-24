# Use Ubuntu as the base image
FROM ubuntu:latest

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y wget curl nano software-properties-common gnupg ca-certificates lsb-release

# Copy the script into the container
COPY install-software.sh /usr/local/bin/install-software.sh

# Make the script executable
RUN chmod +x /usr/local/bin/install-software.sh

# Run the script when the container starts
CMD ["/bin/bash", "-x", "/usr/local/bin/install-software.sh && tail -f /dev/null"]
