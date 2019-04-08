#!/bin/bash

docker service create -d -p 8080:8080 --replicas=4 --name=bth-lab2-service --mount source=bth-vol,target=/usr/src/app samueladewole/bth-lab2
