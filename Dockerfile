# Use official Node.js LTS image
FROM node:18-slim

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Start the application
CMD ["node", "index.js"]
