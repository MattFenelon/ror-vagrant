# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "private_network", ip: "192.168.234.2"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.synced_folder "../200/elvios", "/code/elvios", type: "nfs"
  config.vm.synced_folder "../200/biopearl", "/code/biopearl", type: "nfs"
  config.vm.synced_folder "../200/goldengarcinia", "/code/goldengarcinia", type: "nfs"
  config.vm.synced_folder "../200/mightymatcha", "/code/mightymatcha", type: "nfs"
  config.vm.synced_folder "../200/yaconsyrup", "/code/yaconsyrup", type: "nfs"
  config.vm.synced_folder "../200/bodyproject", "/code/bodyproject", type: "nfs"
  config.vm.synced_folder "../200/spree_bootstrap_frontend", "/code/spree_bootstrap_frontend", type: "nfs"
  config.vm.synced_folder "../200/spree_tax_cloud", "/code/spree_tax_cloud", type: "nfs"
  config.vm.synced_folder "../200/spree_smooth_checkout", "/code/spree_smooth_checkout", type: "nfs"
  config.vm.synced_folder "../200/spree_smooth_cart", "/code/spree_smooth_cart", type: "nfs"
  config.vm.synced_folder "../200/spree_fork", "/code/spree_fork", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--pae", "on"]
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end

  config.vm.provision :shell, :path => "provision_scripts/bootstrap.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_git.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_ruby.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_rails.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_spree.sh", :privileged => false
  config.vm.provision :shell, :path => "provision_scripts/install_postgres.sh", :privileged => true
end
