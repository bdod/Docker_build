#!/bin/bash


docker run -d \
  --restart=always \
  --name secure_registry \
  -v `pwd`/certs:/certs \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  -p 127.0.0.1:444:443 \
  registry:2
