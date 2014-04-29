#!/bin/bash -eux

# Set up password-less sudo for the vagrant user
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/99_vagrant

chmod 440 /etc/sudoers.d/99_vagrant
# vagrant prefers no tty
echo "Defaults !requiretty" >> /etc/sudoers
