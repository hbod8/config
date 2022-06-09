#!/bin/bash
set -e
OUT="${1:-~/.ssh}" 
openssl enc -aes-256-cbc -d -in keys.tar.gz.enc -out keys.tar.gz
tar -xf keys.tar.gz
cp -r keys/* $OUT
openssl enc -aes-256-cbc -d -in $OUT/arlo_id_rsa.enc -out $OUT/arlo_id_rsa
rm -rf keys.tar.gz keys
