# Use an official Node.js runtime as a parent image
FROM node:slim

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "node", "index.js" ]
