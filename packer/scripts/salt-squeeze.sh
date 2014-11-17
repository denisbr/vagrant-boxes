#!/bin/bash -eux

wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -
echo "deb http://debian.saltstack.com/debian squeeze-saltstack main" > /etc/apt/sources.list.d/saltstack.list
echo "deb http://backports.debian.org/debian-backports squeeze-backports main contrib non-free" > /etc/apt/sources.list.d/debian-backports.list
apt-get update -qq
apt-get install -q -y --force-yes salt-minion
update-rc.d -f salt-minion remove
echo "file_client: local" > /etc/salt/minion

