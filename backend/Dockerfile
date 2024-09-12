# Please note that this is just a sample Dockerfile for a typical backend application.
# Feel free to modify it as per your sample app


# Use Node.js 18 as the base image
FROM node:22

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the server files to the container
COPY . .

# Expose the server port
EXPOSE 5000

# Start the server
CMD [ "node", "index.js" ]
