# Base image for operating system
FROM node:alpine

# set  a working directory
WORKDIR app

# Copy the package.json dependency 
COPY ./package.json ./

# run npm install to get the dependencies
RUN npm install

# copy rest of the files
COPY . . 

# run the command
CMD ["npm", "run", "start" ]