#!/bin/bash

set -e
set -x

# Use norwegian mirror
sudo sed -i 's/us.archive/no.archive/g' /etc/apt/sources.list
