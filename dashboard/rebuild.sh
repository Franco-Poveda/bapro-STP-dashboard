#!/bin/bash    

docker stop bapro-nginx2
docker container rm bapro-nginx2
docker image rm dashboard-nginx:latest
docker build -t dashboard-nginx .
docker run --name bapro-nginx2 -d -p 8080:80 dashboard-nginx