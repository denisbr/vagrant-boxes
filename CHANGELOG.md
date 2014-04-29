# CHANGELOG for vagrant-boxes

This file is used to list changes made in each version of vagrant-boxes.

## 0.0.22:
* added Ubuntu Trusty Tahr 14.04 Server x86_64

## 0.0.21:
* upgrade to Chef 11.12.2-1
* add optional scripts for [packer](http://www.packer.io), [serf](http://www.serfdom.io) and [docker](http://www.docker.io)

## 0.0.20:
* [fix Heartbleed Bug (CVE-2014-0160)](http://heartbleed.com)
* upgrade to Chef 11.12.0-1
* introduce ruby and rubygems
* depreciate Debian Wheezy 7.3.0 x86_64
* discontinue lxc-docker prebuild boxes (install it via provisioning instead)

## 0.0.19:
* fix VirtualBox Guest Additions 4.3.10 on prebuild boxes (#8)
* fix installation of insecure vagrant.pub (use curl instead of wget)
* remove superfluous content

## 0.0.18:
* upgrade to VirtualBox Guest Additions 4.3.10 on prebuild boxes
* upgrade to lxc-docker 0.9.1 on prebuild boxes

## 0.0.17:
* added Debian Wheezy 7.4.0 x86_64 with [lxc-docker](http://www.docker.io/) support
* added Ubuntu Saucy Salamander 13.10 Server x86_64 with [lxc-docker](http://www.docker.io/) support

## 0.0.16:
* depreciate Debian Wheezy 7.2.0 x86_64
* depreciate Debian Wheezy 7.1.0 x86_64
* depreciate Debian Wheezy 7.0.0 x86_64
* upgrade Debian Squeeze 6.0.7 x86_64 to Debian Squeeze 6.0.9 x86_64
* upgrade to Chef 11.10.4-1 and VirtualBox Guest Additions 4.3.8 on Debian Squeeze 6.0.9 x86_64
* extend cleanup on Debian Squeeze 6.0.9 x86_64
* remove lxc-docker-0.9.0 on Ubuntu Raring Ringtail 13.04 Server x86_64
* remove lxc-docker-0.9.0 on Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
* move prebuild boxes from Amazon S3 to [DropBox](https://www.dropbox.com/sh/xqyeht0vdivoxcl/iYO49Wd3p3/vagrant-boxes)
* introduce [SHA512SUMS](https://www.dropbox.com/sh/xqyeht0vdivoxcl/iYO49Wd3p3/vagrant-boxes/SHA512SUMS) for all prebuild boxes

## 0.0.15:
* introduce management of boxes metadata via [Vagrantcloud](https://www.vagrantcloud.com/ffuenf)
* extend cleanup on Debian Wheezy 7.4.0 x86_64
* extend cleanup on Debian Wheezy 7.3.0 x86_64
* extend cleanup on Ubuntu Saucy Salamander 13.10 Server x86_64
* extend cleanup on Ubuntu Raring Ringtail 13.04 Server x86_64
* extend cleanup on Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
* upgrade Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
* upgrade to VirtualBox Guest Additions 4.3.8 on Debian Wheezy 7.4.0 x86_64
* upgrade to Chef 11.10.4-1 and VirtualBox Guest Additions 4.3.8 on Debian Wheezy 7.3.0 x86_64
* upgrade to VirtualBox Guest Additions 4.3.8 on Ubuntu Saucy Salamander 13.10 Server x86_64
* upgrade to Chef 11.10.4-1, lxc-docker-0.9.0 and VirtualBox Guest Additions 4.3.8 on Ubuntu Raring Ringtail 13.04 Server x86_64
* upgrade to Chef 11.10.4-1, lxc-docker-0.9.0 and VirtualBox Guest Additions 4.3.8 on Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64

## 0.0.14:
* upgraded to Chef 11.10.4-1 on Debian Wheezy 7.4.0 x86_64
* upgraded to Chef 11.10.4-1 on Ubuntu Saucy Salamander 13.10 Server x86_64

## 0.0.13:
* added Debian Wheezy 7.4.0 x86_64 (thanks to [crahan](https://github.com/crahan))

## 0.0.12:
### Features
* added Ubuntu Saucy Salamander 13.10 Server x86_64
* build virtualbox and vmware artifacts in parallel
* upgraded to Chef 11.10 and VirtualBox Guest Additions 4.3.6 on Debian Wheezy 7.3.0 x86_64
* added optional puppet recipe on Debian Wheezy 7.3.0 x86_64 in repository (not included in prebuild boxes)
* EXPERIMENTAL: added optional docker recipe on Debian Wheezy 7.3.0 x86_64 in repository (not included in prebuild boxes)
### Bugfixes
* upgrade to packer v0.5.1 (fix all templates)
* housekeeping

## 0.0.11:
* added Debian Wheezy 7.3.0 x86_64

## 0.0.10:
* upgraded to Chef 11.8.2 and VirtualBox Guest Additions 4.3.4 on Debian Wheezy 7.2.0 x86_64

## 0.0.9:
* upgraded to Chef 11.8.0 on Debian Wheezy 7.2.0 x86_64

## 0.0.8:
* added Debian Wheezy 7.2.0 x86_64

## 0.0.7:
### Features
* added Ubuntu Raring Ringtail 13.04 Server x86_64 with [docker.io](http://www.docker.io/) support
* added Ubuntu Precise Pangolin 12.04.3 LTS Server x86_64 with [docker.io](http://www.docker.io/) support
* dropped veewee support - we'll go with packer.io here
* dropped provisioning of puppet - we'll go with chef here
### Bugfixes
* bumped VirtualBox Guest Additions from 4.2.16 to 4.2.18 in Debian Wheezy 7.1.0 x86_64
* reorganized links to boxes on aws/s3
* tweaked the clean task ([thanks chris!](http://chr4.org/blog/2013/08/04/apt-get-cleanup-commands/))

## 0.0.6:
* fixed error with mixlib-shellout-1.2.0 which caused shellout commands in chef-11.4.0 to fail with [BUG] Segmentation fault. We use mixlib-shellout-1.1.0 instead in Debian Squeeze 6.0.7 x86_64

## 0.0.5:
### Features
* added vagrant post-processor to [packer](http://www.packer.io/) templates
* added additional Debian Wheezy 7.1.0 x86_64 (VirtualBox Guest Additions 4.2.16, Chef 11.6.0, Puppet 3.2.3) 
** Chef 11.6.0 adds [support for environments in chef-solo](http://docs.opscode.com/release/11-6/release_notes.html#chef-solo-environments))
** integrated needed kernel params for [docker.io](http://www.docker.io/) according to [this hint](https://github.com/dotcloud/docker/issues/251#issuecomment-20399450)
### Bugfixes
* fixed [packer](http://www.packer.io/) attributes (iso_md5 -> iso_checksum & iso_chechsum_type)
* [GH-#2] packer fails to install VirtualBox Guest Additions (missing XFree86 Window System)

## 0.0.4:
* added templates for [packer](http://www.packer.io/)

## 0.0.3:
* added Debian Wheezy 7.1.0 x86_64

## 0.0.2:
* added Debian Squeeze 6.0.7 x86_64

## 0.0.1:
* Initial release of vagrant-boxes
* added Debian Wheezy 7.0.0 x86_64