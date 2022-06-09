#!/bin/bash
set -e
tar -zcvf keys.tar.gz keys
openssl enc -aes-256-cbc -in keys.tar.gz -out keys.tar.gz.enc
rm -rf keys.tar.gz keys
