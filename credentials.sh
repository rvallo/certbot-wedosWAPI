#!/bin/bash  

#sha1 password -- generate with echo -n secretpass | sha1sum
PASS="364bdf2ed77a8544d3b711a03b69eeadcc63c9d7"
#your mail on wedos.cz
LOG="user@example.com"
HOUR=$(date +%H)

#echo without -n option not working !!!
AUTH=$(echo -n "$LOG$PASS$HOUR" | sha1sum | cut -d' ' -f1)

DOMAIN="example.com"

#row_id from ./listLE_DNS_records.sh
ROW_ID="1"
