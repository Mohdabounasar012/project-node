# Use official Node.js runtime as a base image
FROM node:20

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies with the flag
RUN npm install 

# Copy the rest of your application code
COPY . .

# Build the node application
#RUN npm run build

# Expose the port that your app will run on
EXPOSE 3000

# Define the command to run the application
CMD ["start", "node", "server.js"]
