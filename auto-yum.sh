#!/bin/bash

# created by    : ajib
# email         : ajib.jawwad@gmail.com
# date          : 18-12-2017
# desc          : simple auto yum update running on cenots and making log about its update if update success or fail

TIME=$(date +%b-%d-%Y-%H:%M:%S)
NOW=$(date +%Y%m%d)
CMDYUM='yum update -y'

echo "$TIME Update running!" >> /var/log/autoyum-$NOW.log

$CMDYUM >> /var/log/autoyum-$NOW.log 2>&1
#$EXPORTLOG 2>&1
if echo $? -eq 0; then
        echo "$TIME Update successfull !" >> /var/log/autoyum-$NOW.log
        exit 0
else
        echo "$TIME Update error!" >> /var/log/autoyum-$NOW.log
        exit 1
fi
