# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/focal64"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.33.10"
	acs.vm.provision "shell", inline: "/vagrant/prepare-acs.sh"
  end

  config.vm.define "win" do |win|
    win.vm.box = "StefanScherer/windows_2022"
	win.vm.hostname = "win"
	win.vm.network "private_network", ip: "192.168.33.50"
	win.vm.communicator = "winrm"
	win.winrm.username = "vagrant"
	win.winrm.password = "vagrant"
	win.winrm.max_tries = 100
    win.winrm.retry_delay = 2
	win.vm.provider "virtualbox" do |vb|
	  vb.memory = 2048
	  vb.cpus = 2
	end
  end
end
