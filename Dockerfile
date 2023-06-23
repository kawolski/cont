# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json ./
COPY index.js ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the desired port (replace 3000 with your application's port if necessary)
EXPOSE 3000

# Start the Node.js application
CMD [ "node", "index.js" ]
