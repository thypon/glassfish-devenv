glassfish-devenv
================

Development Environment for Glassfish.

This creates a dev. environment virtual machine with [Vagrant](http://vagrantup.com/).

Hardware Requirements
---------------------

- CPU: Dual Core or more
- Memory: 2GB or more

Software Requirements
---------------------

- [Install Virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [Install Vagrant](http://downloads.vagrantup.com/)

Getting Started
---------------

Create the virtual machine and installs all the needed packages:

    user@host> vagrant up # It can takes several hours depending on your internet connection

    user@host> vagrant ssh # This command brings you inside your build environment

    vagrant@guest> make # this command downloads glassfish inside src/ and do a clean build

From now on your glassfish source code should be inside src/ directory. To start working on the code run Eclipse following [this video guide](nolinkfornow).

Usefull Links
-------------

- [Vagrant Docs](http://docs.vagrantup.com/v2/)
- [Virtualbox Docs](https://www.virtualbox.org/wiki/Documentation)
