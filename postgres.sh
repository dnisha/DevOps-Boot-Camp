#! /bin/bash

if [ -d ~/Documents/DevOps/postgres-data ] 
then
   echo "Data Directory Already Exist" 
else
    mkdir ~/Documents/DevOps/postgres-data
fi

podman run --rm -it -p 5432:5432 -v ~/Documents/DevOps/postgres-data:/var/lib/postgresql/data --name postgres -e POSTGRES_PASSWORD=mysecretpassword docker.io/library/postgres:14.4

# user - postgres
# passwqord - mysecretpassword
# SELECT NOW()



