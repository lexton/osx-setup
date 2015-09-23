# -*- mode: ruby -*-
# vi: set ft=ruby :


VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = "ubuntu/trusty64"

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  # Forward port 8080 and early 4000 port range to host
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :forwarded_port, guest: 4000, host: 4000
  config.vm.network :forwarded_port, guest: 4001, host: 4001
  config.vm.network :forwarded_port, guest: 4002, host: 4002
  config.vm.network :forwarded_port, guest: 4003, host: 4003
  config.vm.network :forwarded_port, guest: 4004, host: 4004
  config.vm.network :forwarded_port, guest: 4005, host: 4005
  
  # Install Docker, but nothing else
  config.vm.provision "docker"
  
end
