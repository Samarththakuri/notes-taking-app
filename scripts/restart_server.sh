#!/bin/bash
set -e
# If Apache (Amazon Linux)
if systemctl list-units --type=service | grep -q httpd; then
  systemctl restart httpd || true
# If Ubuntu (apache2)
elif systemctl list-units --type=service | grep -q apache2; then
  systemctl restart apache2 || true
fi
