# 1. Use the official Node.js Alpine base image (Current LTS)
FROM node:20.8.0-alpine

# 2. Set the working directory inside the Alpine file system
WORKDIR /app

# 3. Copy package files first to leverage Docker layer caching
COPY package*.json ./

# 4. Install production dependencies only (keeps the image small)
RUN npm ci --only=production

# 5. Copy the rest of your Express app source code
COPY . .

# 6. Expose the port your Express app listens on
EXPOSE 3000

# 7. Start the server using Node directly
CMD ["node", "server.js"]
