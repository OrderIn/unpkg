FROM node:12-slim as build

# Install git. Required by the build process
RUN apt-get update && apt-get install -y \
    git
# Create the working directory
WORKDIR /usr/src/app

# Copy the package files and install
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

RUN npm run build


# Final running image
FROM node:12-slim

# Create the working directory
WORKDIR /usr/src/app

#Copy the application from the build image
COPY --from=0 /usr/src/app ./
RUN npm install --only=production

EXPOSE 8080

CMD [ "node", "server.js" ]
