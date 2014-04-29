#!/bin/bash -eux

cat > /etc/apt/sources.list << EOF
#  /etc/apt/sources.list
#
#  Internal Startsiden Mirror
#
deb http://apt.startsiden.no/ftp.dk.debian.org/debian/     wheezy main contrib non-free

#
#  Security updates
#
deb http://apt.startsiden.no/security.debian.org/          wheezy/updates  main contrib non-free

#
#  Internal Startsiden Production repos
deb http://wheezyapt.startsiden.no/                         wheezy main contrib non-free
deb http://wheezyaptbuilder-dev.startsiden.no/              wheezy main contrib non-free
EOF

apt-get update
apt-get -y dist-upgrade

# install curl to fix broken wget while retrieving content from secured sites
apt-get -y install curl
