#!/bin/bash

docker run -d -p 8080:8080  --name=bth-lab2 --mount source=bth-vol,destination=/usr/src/app samueladewole/bth-lab2
