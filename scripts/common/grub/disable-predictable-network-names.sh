#!/bin/bash

set -e
set -x

# Disable "Predictable" Network Interface Names
# https://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/
sudo mkdir -p /etc/default/grub.d
sudo echo "GRUB_CMDLINE_LINUX_DEFAULT=\"\$GRUB_CMDLINE_LINUX_DEFAULT net.ifnames=0\"" | sudo tee /etc/default/grub.d/net.ifnames.cfg > /dev/null
sudo update-grub
