#! /bin/bash
docker rmi $(docker images -q php-mysql_*)
echo '----- docker images start -----'
docker images
echo '----- docker images end -----'
