#!/bin/bash

docker build -t samueladewole/bth-lab2 .

docker run -p 8080:8080 -d samueladewole/bth-lab2
