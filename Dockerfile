# version of node to use
FROM node:8.5.1
# define working directory for docker
WORKDIR /usr/src/app
# copy all our source code into the working directory
COPY package.json ./
# install npm dependencies and pm2
RUN npm install 

COPY . .
# expose port 3000 for our server to run on
EXPOSE 3000
# command to start our server
CMD ["start", "server.js" ]
