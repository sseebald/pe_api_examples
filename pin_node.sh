#!/bin/bash

###### Pin node to group  example ######

type="POST" #PUT/POST/GET/DELETE
host="https://master.inf.puppetlabs.demo:4433" #Puppet Master
endpoint="classifier-api/v1/groups" #API Endpoint
group="32b5b720-a2d0-4ca9-90d3-014d2899fe76" #Group ID
cacert="$(/opt/puppet/bin/puppet config print localcacert)"
cert="$(/opt/puppet/bin/puppet config print hostcert)"
key="$(/opt/puppet/bin/puppet config print hostprivkey)"

json="$(curl -X ${type} ${host}/${endpoint}/${group} -H 'Content-Type: application/json' -d '{ "rule":["or",["=","name","test.puppetlabs.com"]] }' --cacert ${cacert} --cert ${cert} --key ${key})" #Change test.puppetlabs.demo to name of machine to pin to group

echo $json

########################################


