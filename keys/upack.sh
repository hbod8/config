#!/bin/bash
set -e
openssl enc -aes-256-cbc -d -in keys.tar.gz.enc -out keys.tar.gz
tar -xf keys.tar.gz
