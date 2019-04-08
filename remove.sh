#!/bin/bash

docker image rm samueladewole/bth-lab2

docker rm -v bth-lab2

docker volume prune
