#!/usr/bin/env bash

# Install Ruby using RVM
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm

# Install Rails separately to get around https://github.com/rails/rails/issues/11814
gem install rails --no-ri --no-rdoc

# Install PostgreSQL - Add the official PostgreSQL repository
echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
# Install PostgreSQL
sudo apt-get install -y postgresql-9.2