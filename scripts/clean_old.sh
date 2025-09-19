#!/bin/bash
set -e

# Make sure Apache root exists
if [ -d /var/www/html ]; then
  echo "Cleaning old files in /var/www/html..."
  rm -rf /var/www/html/*
else
  echo "/var/www/html does not exist, creating..."
  mkdir -p /var/www/html
fi
