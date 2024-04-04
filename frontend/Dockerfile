# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining frontend source code to the working directory
COPY . .

# Build the application for production
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
