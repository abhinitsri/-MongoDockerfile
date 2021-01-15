# MongoDockerfile
This file container the dockerfile text for installing mongodb on docker container.
This task took a hell lot of time from me becoz of unavailibility of proper source code.
SRC1 - https://www.tecmint.com/install-mongodb-on-ubuntu/
SRC2 - https://github.com/dockerfile/mongodb
The SRC2 code was edited using  SRC1 latest public key for 20.04
# Building the Dockerfile
docker build -t mongoimage .

# Running the images created after building of dockerfile
docker run -d -p27017:27017 --name mongocontainer Image_id
# check for running containers
docker ps
# entering into docker container as root user
docker exec -it Container_id /bin/bash
