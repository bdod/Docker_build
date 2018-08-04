#!/bin/bash

registry='registry.domain.com'
certpath="/etc/docker/certs.d/${registry}/"

hosts='host1 host2 host3'


### need root login
#for i in $hosts; do
#  ssh $i mkdir -p $certpath
#  scp `pwd`/certs/domain.crt $i:${certpath}/ca.crt
#done


###if you cannot login from root
for i in $hosts; do
  cat `pwd`/certs/domain.crt | ssh $i "cat > ~/ca.crt"
  ssh $i "sudo mkdir -p ${certpath} && sudo cp ~/ca.crt ${certpath}/ca.crt"
done

