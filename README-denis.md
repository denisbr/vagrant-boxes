Description
===========

See README.md for information on purpose.

Changes vs upstream
===================

* As few changes from upstream as possible to keep tracking easier
* Less aggressive purge of older distro versions
* Salt only images which forego Puppet and Chef for Saltstack minion only
* Misc template changes making it easier to maintain this vs upstream
* Removed Vagrant Cloud postprocessing as it is not to interesting for this purpose and was hardcoded to upstreams accounts
