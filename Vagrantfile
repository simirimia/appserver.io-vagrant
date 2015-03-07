# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "cargomedia/debian-7-amd64-default"
  config.vm.network "forwarded_port", guest: 9080, host: 9080
  config.vm.network "private_network", ip: "192.168.33.10"

  # first some basic shell stuff to set up base system and repositories
  config.vm.provision "shell", path: "bootstrap.sh"

  # continue with puppet
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
  end

  # appserver.io configuration, postprocessing after installation
  config.vm.provision "shell", path: "appserver.sh"
end
