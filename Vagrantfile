# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.cpus = 2
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: "for S in /vagrant/provision/*.main; do bash $S; done"
  config.vm.provision "shell", inline: "for S in /vagrant/provision/*.desktop; do bash $S; done"
end
