#!/bin/bash
### every exit != 0 fails the script
set -e

echo "Install and configure firewall"
apt-get update
apt-get install -y ufw

ufw default deny outgoing
ufw default deny incoming

ufw default allow 6901
ufw default allow 5901