FROM armv7/armhf-baseimage:latest

# Use baseimage-docker's shell.
CMD ["/bin/bash"]

# Update the repos
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y hostapd dnsmasq 

RUN chmod u+x 

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
