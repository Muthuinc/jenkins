#!/bin/bash

set -e


touch index.html
echo "<!DOCTYPE html>
<html>
<head>
	<title> day2 </title>
</head>

<body>

<!-- ordered list -->

<ol>
    <li> first line</li>
    <li> second line </li>
</ol>

<!-- trying italic format -->

<p> this is the example of <em> italic </em> format </p>

<!-- trying bold -->

<p> i am <b>muthu</b> </p>

<!-- trying underline -->

<p> the line <u> line</u> </p>

<!-- Description list -->

<dl>
   <dt> about html </dt><br>
   <dd> html is the website designing language </dd>
</dl>

<!-- abbreviation title -->

<abbr title="bachelor of engineering">B.E</abbr>

<!-- superscript -->

<p> hellow good morning time is 7<sup>o</sup> clock </p> 

<!-- subscript -->

<p> chemical formula of water is H<sub>2</sub>O </p>

<!-- time  need to know more -->

<p> what date is today? <br>
    today is  04 May 2023 </time> </p>
    
<!-- adding link to images -->

<a href="https:www.google.com">
<img src="nature.jpeg" alt="nature of the image"> </img> </a>

<p>
<address>
xxx
xxx
yyy
yyy
</address>

    
     " > index.html


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





