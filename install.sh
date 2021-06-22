#!/bin/bash
cp simple-brightness /usr/bin/
chmod 755 /usr/bin/simple-brightness
echo "installed to /usr/bin/"
cp brightness-wa.service /etc/systemd/system/
systemctl enable --now brightness-wa.service

