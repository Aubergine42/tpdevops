FROM node:14

#Create app directory
WORKDIR /usr/src/app

#Install all app dependencies
COPY package*.json ./
RUN npm install

COPY . .

CMD [ "npm", "start" ]

EXPOSE 3000

