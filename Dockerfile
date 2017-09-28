FROM ubuntu:16.04
LABEL "Author"="Martial Michel <martialmichel@datamachines.io>"
LABEL version="1.0"
LABEL description="Preconfigured Ubuntu 16.04 with only the ssh client installed"

# Make sure we have bash as our default shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Get the packages needed for Ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install ssh

# build with (adapt version number)
# % docker build --tag="martialdmc/ubuntu-ssh:1.0" .

# use with
# % docker run -t -i martialdmc/ubuntu-ssh:1.0 /bin/bash

## Just remember to do a % docker rm <ContainerID>
# here and there to save space