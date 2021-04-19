#! /bin/bash
docker-compose stop
docker rm $(docker ps -aq)
echo '----- docker ps start -----'
docker ps
echo '----- docker ps end -----'
