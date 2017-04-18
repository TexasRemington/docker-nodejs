# import base image
FROM node:4-onbuild

# author
MAINTAINER marco <marco@marcopineda.com>

# make a docker app directory and then set path to working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copy pwd to docker app into docker image
COPY package.json /usr/src/app

# install dependencies
RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
