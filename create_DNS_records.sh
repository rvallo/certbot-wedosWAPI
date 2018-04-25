#!/bin/bash  

source "$(dirname "$0")"/credentials.sh

curl -d "request=<request><user>$LOG</user><auth>$AUTH</auth><command>dns-row-add</command><data><domain>$DOMAIN</domain><name>_acme-challenge$SUBDOMAIN</name><ttl>600</ttl><type>TXT</type><rdata>itswork</rdata></data></request>" https://api.wedos.com/wapi/xml
