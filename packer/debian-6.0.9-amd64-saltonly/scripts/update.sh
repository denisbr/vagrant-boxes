#!/bin/bash -eux

apt-get update
apt-get -y upgrade

# install curl to fix broken wget while retrieving content from secured sites
apt-get -y install curl