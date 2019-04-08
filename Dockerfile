FROM node:9.3.0
# Create an app directory

WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY package*.json ./

RUN npm install
# When the code is building  for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

#This port 8080 is available to the world outside this container

EXPOSE 8080

CMD [ "npm", "start" ]
