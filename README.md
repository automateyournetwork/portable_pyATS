# portable_pyATS
An Ubuntu, pyATS environment you can shell into, update your testbed, and run pyATS tests locally as a Container

## Instructions

1. Windows
Install WSL 
Enable WSL2
Install Ubuntu (WSL2 enabled)
Install VS Code + Docker Extension (optional)
Install Docker Desktop

In Ubuntu:

docker run -it johncapobianco/portable_pyats:latest

Either in Ubuntu or Docker Desktop run the interactive CLI

Update (vi testbed.yaml) the testbed.yaml file to match your target device. It is pre-canned to work with the Cisco DevNet Nexus 9000 Sandbox

2. Linux 
Install Docker
docker run -it johncapobianco/portable_pyats:latest

https://hub.docker.com/repository/docker/johncapobianco/portable_pyats