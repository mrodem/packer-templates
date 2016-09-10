#!/bin/bash

set -e
set -x

# Disable daily apt unattended updates.
sudo bash -c "echo 'APT::Periodic::Enable \"0\";' >> /etc/apt/apt.conf.d/10periodic"
