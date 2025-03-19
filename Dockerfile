FROM node:18-slim

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Set the port
ENV PORT=8080
EXPOSE 8080
# Start the server
CMD [ "node", "index.js" ]



