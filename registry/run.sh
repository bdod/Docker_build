#!/bin/bash


docker run -d \
  --restart=always \
  --name registry \
  -p 127.0.0.1:5000:5000 \
  registry:latest
