# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json from the root directory to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining backend source code from the backend directory to the working directory
COPY . .


EXPOSE 4000

# Define the command to run the application
CMD ["node", "server.js"]
