FROM ubuntu:20.04

# Install MongoDB.
RUN apt-get update && apt-get -y install gnupg && apt-get -y install wget
RUN  wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key ad>
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/m>
RUN apt-get update && \
  apt-get install -y mongodb-org && \
  rm -rf /var/lib/apt/lists/*

# Define mountable directories.
VOLUME ["/data/db"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["mongod"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017
