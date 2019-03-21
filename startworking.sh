#!/bin/bash

#kill the ubuntu default server
cd /etc/init.d
./apache2 stop
sleep 1

#get the name of the directory
echo Type the route of the directory you want to work in!
read dirname
sleep 1

cd $dirname
sleep 5
docker-compose up -d --build
sleep 5
pygmy up --no-resolver
