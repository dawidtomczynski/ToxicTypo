#!/bin/bash

docker --version

if [[ $? == 0 ]]; then
	true
else
        curl -fsSL https://get.docker.com -o get-docker.sh
        sudo sh get-docker.sh
        sudo rm get-docker.sh
        sudo groupadd docker
        sudo usermod -aG docker $USER
        newgrp docker
fi

docker rm -f toxictypoapp
docker rmi 644435390668.dkr.ecr.eu-central-1.amazonaws.com/dawid-toxictypoapp:latest
docker load -i /home/ubuntu/toxictypoapp.tar
docker run -d --name toxictypoapp --restart always -p 80:8080 644435390668.dkr.ecr.eu-central-1.amazonaws.com/dawid-toxictypoapp:latest
