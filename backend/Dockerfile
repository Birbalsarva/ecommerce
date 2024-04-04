# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire backend directory structure to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Define the command to run the application
CMD ["node", "server.js"]


