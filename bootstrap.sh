#!/usr/bin/env bash

# Install Git
sudo apt-get -y install git-core

# Install Ruby using RVM
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm

# Install Rails separately to get around https://github.com/rails/rails/issues/11814
gem install rails --no-ri --no-rdoc