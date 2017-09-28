# ubuntu-ssh

A very simple DockerFile designed to help deploy an up-to-date Ubuntu 16.04 and only installing an ssh client

**To Build**:
In the directory where this `Dockerfile` is:

`% docker build --tag="martialdmc/ubuntu-ssh:1.0" .`

**To Use**:

`% docker run -t -i martialdmc/ubuntu-ssh:1.0 /bin/bash`


**Note**:
Just Remember to do a 

`% docker rm <ContainerID>`

here and there to save space
