# Docker and Node hello world
#### By: Nathan Beckstead

------------


# Build
I started the version tag at v1.0, then went v1.1 then finally v1.2
`sudo docker build -t hello-node:v1.2 .`


# Run
Here is the command I used:
`sudo docker run -d --rm --name hello -P hello-node:v1.2`

However that auto generated port has to be found with:
`sudo docker ps`



------------

I also implimented an ENV variable called PORT for the containers internal port used by the app.
This allows something like this to work:
`sudo docker run -d --rm --name hello -p 1337:1234 -e PORT=1234 hello-node:v1.2`

# URL
#### `http://localhost:(port)/`
with the port being the port defined in the run section.
