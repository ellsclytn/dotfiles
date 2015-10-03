MacBook-Setup
======

MacBook-Setup is a script to set up an OS X computer with the applications I develop with, and programs I use most.

Requirements
------------

This script has been initially built to work with OS X Yosemite (10.10). Since the release of [OS X El Capitan (10.11)](https://www.apple.com/osx/), this file has been updated to support El Capitan, and no longer supports Yosemite.

What it sets up
---------------

* [Composer](https://getcomposer.org)
* [Homebrew](http://brew.sh/)
* [Node.js](http://nodejs.org/) and [NPM](https://www.npmjs.org/)
* [Rbenv](https://github.com/sstephenson/rbenv)
* [Ruby Build](https://github.com/sstephenson/ruby-build)
* [Ruby](https://www.ruby-lang.org/en/)
* [Sails](http://sailsjs.org)
* [Sass](http://sass-lang.com)
* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org)

Many GUI applications are installed, through the use of brew cask. Check out `software.sh` for a list.

Many Mac OS defaults are also set. These can be customised in `defaults.sh`.