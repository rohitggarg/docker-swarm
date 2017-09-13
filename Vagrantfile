# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # config.vm.box = "silverhighway/photon"
  config.vm.box = "vmware/photon"
  config.vm.define :bootstrap do |machine|
    machine.vm.network "private_network", ip: "192.168.99.20"
  end
  config.vm.define :master do |machine|
    machine.vm.network "private_network", ip: "192.168.99.21"
  end
  config.vm.define :node do |machine|
    machine.vm.network "private_network", ip: "192.168.99.22"
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
end
