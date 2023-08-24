# Use the official Node.js image as the base image
FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY server.js .

CMD ["node", "ex5.js"]
