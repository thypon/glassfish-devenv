# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid64"

  config.ssh.forward_x11 = true if ENV['HEADLESS']

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true unless ENV['HEADLESS']
    vb.cpus = 2
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: "for S in /vagrant/provision/*.main; do bash $S; done"
  config.vm.provision "shell", inline: "for S in /vagrant/provision/*.desktop; do bash $S; done"
end
