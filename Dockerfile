# Stage 1: Build Stage
FROM node:latest AS builder
LABEL maintainer="RADHAKRISHNA"

# Set the working directory
WORKDIR /deploy

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application source code
COPY . .

# Stage 2: Final Stage
FROM gcr.io/distroless/nodejs:18
LABEL maintainer="RADHAKRISHNA"

# Set the working directory in the runtime image
WORKDIR /app

# Copy only the built application from the builder stage
COPY --from=builder /deploy .

# Expose the application port
EXPOSE 5000

# Start the application
CMD ["index.js"]
