#!/bin/bash  

source "$(dirname "$0")"/credentials.sh

curl -d "request=<request><user>$LOG</user><auth>$AUTH</auth><command>dns-row-delete</command><data><domain>$DOMAIN</domain><row_id>$ROW_ID</row_id></data></request>" https://api.wedos.com/wapi/xml
