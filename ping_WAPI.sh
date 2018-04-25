#!/bin/bash  

source "$(dirname "$0")"/credentials.sh


curl -d "request=<request><user>$LOG</user><auth>$AUTH</auth><command>ping</command></request>" https://api.wedos.com/wapi/xml
