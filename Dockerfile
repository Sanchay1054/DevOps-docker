# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
# WORKDIR /usr/src/app

# Copy dependency files and install
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 5000

# Start app
CMD ["node", "app.js"]
