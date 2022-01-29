#!/usr/bin/env bash

dockerpath=abhishekraghav08/uda-capstone
TAG=uda-capstone

kubectl run $TAG --image=$dockerpath --generator=run-pod/v1

kubectl get pods

kubectl port-forward pod/$TAG 8000:80
