# Use an official Node.js runtime as a parent image
FROM node:22

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install any needed dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port the app runs on (optional, but helpful for documentation)
EXPOSE 3000

# Define environment variables (optional)
ENV NODE_ENV=production

# Run the application
CMD ["npm", "start"]
