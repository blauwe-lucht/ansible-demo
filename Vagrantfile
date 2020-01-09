# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/xenial64"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.33.10"
	acs.vm.provision "shell", inline: "/vagrant/prepare-acs.sh"
  end

  config.vm.define "win2016" do |win2016|
    win2016.vm.box = "StefanScherer/windows_2016_docker"
	win2016.vm.hostname = "win2016"
	win2016.vm.network "private_network", ip: "192.168.33.50"
	win2016.vm.communicator = "winrm"
	win2016.winrm.username = "vagrant"
	win2016.winrm.password = "vagrant"
	win2016.vm.provider "virtualbox" do |vb|
	  vb.memory = 2048
	  vb.cpus = 2
	end
  end
end
