#!/bin/bash
set -e

echo "Restarting Apache service..."
if systemctl list-units --type=service | grep -q httpd; then
  # Amazon Linux
  systemctl restart httpd
elif systemctl list-units --type=service | grep -q apache2; then
  # Ubuntu/Debian
  systemctl restart apache2
else
  echo "No Apache service found (httpd/apache2)."
fi
