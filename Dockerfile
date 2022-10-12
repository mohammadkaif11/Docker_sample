FROM node:16
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Install python3-pip for mediasoup
RUN apt update
RUN apt install python3-pip -y
RUN pip3 --version

RUN npm install --force
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 80 443

CMD [ "node", "src/server.js" ]
