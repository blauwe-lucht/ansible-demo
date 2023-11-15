#!/bin/sh
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install -y ansible
sudo apt-get install -y python-pip
pip install xmltodict
pip install pywinrm
cp -R /vagrant/ansible-test/* /home/vagrant
