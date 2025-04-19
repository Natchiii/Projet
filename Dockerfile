FROM node:18.20.8-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of your application code
COPY . .


# Run the build process
RUN ["yarn", "run", "build"]

# Expose the application port (Strapi default)
EXPOSE 1337

# Start the Strapi application in development mode
CMD ["yarn", "run", "dev"]
