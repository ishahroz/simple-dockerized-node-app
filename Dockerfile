# Specify a Base Image
FROM node:16-alpine

# Below line changes the working directory to specified path.
# If not done, you get this error "npm ERR! idealTree already exists"
# Also it is always a GOOD practice to change the working directory to following path.
WORKDIR /usr/app

# Copy build files from project directory to custom image/container directory. 
# This step is required because when Docker client runs "npm install", it will look for "package.json" file in base image.
# And the base image do not comes with a "package.json" file, so we have to explicitly tell Docker client to copy our files.
COPY ./ ./

# Install some dependencies
RUN npm install

# Default Command that container will run when started
CMD ["npm", "start"]