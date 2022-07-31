#!/bin/sh
sleep 30s
apt-get update
apt-get install -y mongodb
systemctl start mongodb
systemctl enable mongodb
systemctl status mongodb
