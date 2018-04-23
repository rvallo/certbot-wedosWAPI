#!/bin/bash  

source ./credentials.sh

#row_id from ./listLE_DNS_records.sh 
curl -d "request=<request><user>$LOG</user><auth>$AUTH</auth><command>dns-row-update</command><data><domain>$DOMAIN</domain><row_id>$ROW_ID</row_id><ttl>600</ttl><rdata>$CERTBOT_VALIDATION</rdata></data></request>" https://api.wedos.com/wapi/xml
echo "$CERTBOT_VALIDATION"

sleep 750
