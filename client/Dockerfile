
# Base image for operating system
FROM node:alpine as builder-1

# set  a working directory
WORKDIR app

# Copy the package.json dependency 
COPY ./package.json ./

# run npm install to get the dependencies
RUN npm install --repo-update

# copy rest of the files
COPY . . 

# run the command
CMD ["npm", "run", "build"]

# run nginx for react app
FROM nginx:latest 

# set routing config for nginx
COPY ./react-nginx/react-nginx.conf /etc/nginx/nginx.conf 

# serve react build files
COPY --from builder-1 /app/build /usr/share/nginx/html


