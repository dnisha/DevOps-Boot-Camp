#! /bin/bash

BASEDIR="${PWD}"
JENKINSDATA="${BASEDIR}/jenkins-data"

echo "Script executed from: ${BASEDIR}"
echo "Jenkins persistence folder: ${JENKINSDATA}"

if [ -d ${JENKINSDATA} ] 
then
   echo "Data Directory Already Exist" 
else
    mkdir ${JENKINSDATA}
fi

podman run --rm -it -p 8080:8080 -p 50000:50000 -v ${JENKINSDATA}:/var/jenkins_home -u root docker.io/library/jenkins:2.19.1-alpine

