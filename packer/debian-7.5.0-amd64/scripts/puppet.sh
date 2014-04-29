#!/bin/bash -eux

# Prepare puppetlabs repo
wget http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
dpkg -i puppetlabs-release-wheezy.deb
apt-get -y update

# Install puppet/facter
apt-get -y install puppet facter
rm -f puppetlabs-release-wheezy.deb