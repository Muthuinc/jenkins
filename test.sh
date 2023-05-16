#!/bin/bash

set -e


touch index.html
echo "successfully build" > index.html


# creating Dockerfile

touch Dockerfile
echo "FROM ubuntu" > Dockerfile
echo "RUN apt update -y" >> Dockerfile
echo "RUN apt install -y nginx " >> Dockerfile
echo 'CMD ["nginx", "-g", "daemon off;"]' >> Dockerfile

# creating dockercompose

touch docker-compose.yml
echo  'version: "3"' > docker-compose.yml
echo  "services:"  >> docker-compose.yml
echo  "  test3:"  >> docker-compose.yml
echo  "    build:"    >> docker-compose.yml
echo  "      context: ."  >> docker-compose.yml
echo  "      dockerfile: Dockerfile"  >> docker-compose.yml
echo  "    container_name: test2 "  >> docker-compose.yml
echo  "    ports:"  >> docker-compose.yml
echo  '      - "80:80"'  >> docker-compose.yml
echo  "    volumes:"  >> docker-compose.yml
echo  "      - ./ :/var/www/html"  >> docker-compose.yml

# creating docker container

docker-compose up -d 

# checking whether the port is open or not

if curl http://localhost:80 ;
  then
   echo " port is running"
   docker ps
else 
   echo " port is not running"
   docker ps -a
fi

# if port is not running after the image is built maybe the problem is in CMD line please check





