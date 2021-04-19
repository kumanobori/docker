#! /bin/bash
docker volume rm $(docker volume ls -q)
echo '----- docker volume ls start -----'
docker volume ls
echo '----- docker volume ls end -----'
