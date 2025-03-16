# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "web01" do |web01|
    web01.vm.box = "ubuntu/focal64"
    web01.vm.hostname = "web01"
    web01.vm.network "public_network", bridge: "Hyper-V Virtual Ethernet Adapter #3"
    web01.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.cpus = 1
    end
  end
end
