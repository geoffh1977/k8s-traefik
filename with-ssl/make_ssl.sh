#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=*.house.local"
echo
echo "tls.crt Base64:"
cat tls.crt | base64 -w0 && echo

echo
echo "tls.key Base64:"
cat tls.key | base64 -w0 && echo

echo
rm -f tls.key tls.crt
