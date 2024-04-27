# Use the official Node.js 14 image as base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port (assuming your application listens on port 3000)
EXPOSE 3000

# Command to run the application when the container starts
CMD ["npm", "start"]
