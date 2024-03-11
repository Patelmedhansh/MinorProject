# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other source code to the working directory
COPY . .

# Build your application
RUN npm run build

# Expose the port your app runs on
EXPOSE 3000

# Command to run your application
CMD [ "npm", "start" ]
