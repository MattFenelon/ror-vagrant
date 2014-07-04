# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

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

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--pae", "on"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provision :shell, :path => "bootstrap.sh", :privileged => false
  config.vm.provision :shell, :path => "bootstrap_postgres.sh"

  # PostgreSQL port
  config.vm.network :forwarded_port, guest: 5432, host: 15432
end
