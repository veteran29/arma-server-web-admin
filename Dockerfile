FROM node:4.2.1

# Install arma dependencies
RUN apt-get update
RUN apt-get install -y lib32stdc++6

# Cleanup apt files
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install node dependencies for the application
RUN mkdir /app
COPY package.json /app/package.json
WORKDIR /app
RUN npm install
COPY . /app/

# Start application
CMD ./docker.sh

# Declare application port
EXPOSE 3000
