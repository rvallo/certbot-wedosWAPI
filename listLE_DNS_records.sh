#!/bin/bash  

source "$(dirname "$0")"/credentials.sh

#displays the ID for editing LE record
curl -d "request=<request><user>$LOG</user><auth>$AUTH</auth><command>dns-rows-list</command><data><domain>$DOMAIN</domain></data></request>" https://api.wedos.com/wapi/xml | grep -B1 "_acme-challenge$SUBDOMAIN"
