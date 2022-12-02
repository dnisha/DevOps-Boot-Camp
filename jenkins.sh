#! /bin/bash

if [ -d ~/Documents/DevOps/jenkins-data ] 
then
   echo "Data Directory Already Exist" 
else
    mkdir ~/Documents/DevOps/jenkins-data
fi

podman run --rm -it -p 8080:8080 -p 50000:50000 -v ~/Documents/DevOps/jenkins-data:/var/jenkins_home -u root docker.io/library/jenkins:2.19.1-alpine

