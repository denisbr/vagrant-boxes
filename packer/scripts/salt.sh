#!/bin/bash -eux

# codename of distro
LSB_RELEASE=$(lsb_release -sc)

wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -
echo "deb http://debian.saltstack.com/debian ${LSB_RELEASE}-saltstack main" > /etc/apt/sources.list.d/saltstack.list
apt-get update -qq
apt-get install -q -y --force-yes salt-minion
update-rc.d -f salt-minion remove
echo "file_client: local" > /etc/salt/minion

