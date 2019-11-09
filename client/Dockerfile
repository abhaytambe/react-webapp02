
# Base image for operating system
FROM node:alpine as builder

# set  a working directory
WORKDIR app

# Copy the package.json dependency 
COPY ./package.json ./

# run npm install to get the dependencies
RUN npm install --repo-update

# copy rest of the files
COPY . . 

# run the command
RUN npm run build

# run nginx for react app
FROM nginx:latest 

# set routing config for nginx
COPY ./react-nginx/react-nginx.conf /etc/nginx/nginx.conf 

# serve react build files
COPY --from=builder /app/build /usr/share/nginx/html




