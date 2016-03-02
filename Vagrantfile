# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "192.168.234.2"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.synced_folder "../200/hivewebshop", "/code/hivewebshop", type: "nfs"
  config.vm.synced_folder "../200/ifp-scraper", "/code/ifp-scraper", type: "nfs"
  config.vm.synced_folder "../200/ifp-portal", "/code/ifp-portal", type: "nfs"
  config.vm.synced_folder "../200/bowhurst", "/code/bowhurst", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--pae", "on"]
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    # Force the box into 64 bit mode. For some reason the Ubuntu box
    # isn't configured correctly.
    vb.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end

  config.vm.provision :shell, :path => "provision_scripts/bootstrap.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_git.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_ruby.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_rails.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_spree.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_postgres.sh", :privileged => true
end
