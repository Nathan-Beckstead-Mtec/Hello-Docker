# Docker and Node hello world
#### By: Nathan Beckstead
------------


# Lab #3

1. **Deploy your stack**
	- `sudo docker swarm init`
	- `sudo docker stack deploy -c docker-compose.yaml myapp`
2. **Scale out your first stack to 7 instances/replicas**
	- `sudo docker service scale myapp_first=7`
3. **Scale in your first stack to 2 instances/replicas**
	- `sudo docker service scale myapp_first=2`
4. **Remove your stack and delete your containers**
	- `sudo docker stack rm myapp`


------------




# Lab #2:

## Build
I started the version tag at v1.0, then went v1.1 then finally v1.2
`sudo docker build -t hello-node:v1.2 .`


## Run
Here is the command I used:
`sudo docker run -d --rm --name hello -P hello-node:v1.2`

However that auto generated port has to be found with:
`sudo docker ps`



------------

I also implimented an ENV variable called PORT for the containers internal port used by the app.
This allows something like this to work:
`sudo docker run -d --rm --name hello -p 1337:1234 -e PORT=1234 hello-node:v1.2`

## URL
#### `http://localhost:(port)/`
with the port being the port defined in the run section.

