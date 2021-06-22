#!/bin/bash
cp simple-brightness /usr/bin/
chmod 755 /usr/bin/simple-brightness
echo "installed to /usr/bin/"
cp brightness-init.service /etc/systemd/system/
systemctl enable --now brightness-init.service

