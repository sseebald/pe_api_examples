#!/bin/bash

###### View all group data example ######

type="GET" #PUT/POST/GET/DELETE
host="https://master.inf.puppetlabs.demo:4433" #Puppet Master
endpoint="classifier-api/v1/groups" #API Endpoint
cacert="$(/opt/puppet/bin/puppet config print localcacert)"
cert="$(/opt/puppet/bin/puppet config print hostcert)"
key="$(/opt/puppet/bin/puppet config print hostprivkey)"

json="$(curl -X ${type} ${host}/${endpoint} -H 'Content-Type: application/json' --cacert ${cacert} --cert ${cert} --key ${key})"

echo $json

#########################################


