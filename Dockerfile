# Use the official Haskell image
FROM haskell:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the .cabal file and the stack.yaml if using Stack
COPY *.cabal ./

# Copy the rest of the application code
COPY . .

# Install dependencies
RUN cabal update && cabal install --only-dependencies

# Build the application
RUN cabal build

# Run the tests
RUN cabal test

# Expose a port if your app serves over HTTP
# EXPOSE 8080

# Command to run the application
CMD ["cabal", "test"]
