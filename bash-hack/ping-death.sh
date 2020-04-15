#!/bin/bash

VAR_DOMAIN=''
VAR_IP=$(dig $VAR_DOMAIN +noall +answer | grep A | cut -f6)

for HOST in $VAR_IP; do
       ping -a -l 65500 $HOST
done 
