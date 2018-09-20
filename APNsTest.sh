#!/bin/bash

nc -z 5-courier.sandbox.push.apple.com 5223
if [[ "$?" -ne 0 ]]; then
    echo "5223 needs to be opened to Apple's 17/8 block"
fi

nc -z 5-courier.sandbox.push.apple.com 443
if [[ "$?" -ne 0 ]]; then
    echo "443 needs to be opened to Apple's 17/8 block"
fi 

nc -z gateway.sandbox.push.apple.com 2195
if [[ "$?" -ne 0 ]]; then
    echo "2195 needs to be opened to Apple's 17/8 block"
fi

nc -z gateway.sandbox.push.apple.com 2196
if [[ "$?" -ne 0 ]]; then
    echo "2196 needs to be opened to Apple's 17/8 block"
fi
