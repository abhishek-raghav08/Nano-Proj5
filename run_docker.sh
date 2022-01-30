#!/usr/bin/env bash

docker build --tag=abhishekraghav08/uda-capstone:uda-capstone .

docker image ls

docker run -t --rm -p 80:80 abhishekraghav08/uda-capstone:uda-capstone