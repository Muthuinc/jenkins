#!/bin/bash

set -e


touch index.html
echo "<!Doctype html>
<html>
<head>
	<title>
		this is just the beginning
	</title>
</head>

<body>

	<h2>check the font</h2>
	<h3> check the font</h3>

</body>

<p>
 
  <a href="http:www.google.com/" title="do you want to enter google"/>google<a/>
  <img src = "nature.jpeg">
</p>
</html>

<ul>
    <li>this is sample1</li>
    <li>this is sample2</li>
</ul>

<ol>
    <li>this is sample order list</li>
    <li>this is sample order list</li>
    <ul>
    <li> inside order list </li>
    </ul>
<ol>
</html>
    
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
echo  "  test6:"  >> docker-compose.yml
echo  "    build:"    >> docker-compose.yml
echo  "      context: ."  >> docker-compose.yml
echo  "      dockerfile: Dockerfile"  >> docker-compose.yml
echo  "    container_name: test5 "  >> docker-compose.yml
echo  "    ports:"  >> docker-compose.yml
echo  '      - "120:240"'  >> docker-compose.yml
echo  "    volumes:"  >> docker-compose.yml
echo  "      - ./:/var/www/html"  >> docker-compose.yml






