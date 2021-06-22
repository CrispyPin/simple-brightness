#!/bin/bash
cp simple-brightness.sh /usr/bin/
chmod 755 /usr/bin/simple-brightness.sh
echo "installed to /usr/bin/"
cp brightness-wa.service /etc/systemd/system/
systemctl enable --now brightness-wa.service

