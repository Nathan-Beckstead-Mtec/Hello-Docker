FROM node:19

# house-keeping
LABEL maintainer="Nathan Beckstead"
LABEL description="A docker hello world node website."
LABEL cohort="15"


# these need to match
# the ENV variable sets the port for node to host on
# the EXPOSE exposes it
ENV PORT=3000
EXPOSE 3000/tcp


WORKDIR /user
# put files into container
COPY . .

RUN npm install

CMD ["npm","start"]

# build:
# sudo docker build -t helloNode:v1.0 .
