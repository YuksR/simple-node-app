# Base Image
FROM node:22-alpine

# Specify the Working Directory
WORKDIR /usr/src/app

COPY package*.json ./

# Installing Dependencies
RUN npm install

# Copy all files to the working Directory
COPY . .

# exposing port for Node Application to run
EXPOSE 3000

# specify Default Commands
CMD [ "npm", "start" ]
