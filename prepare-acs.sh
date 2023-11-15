#!/bin/bash
set -euo pipefail

apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install -y ansible
apt-get install -y python3-pip
pip install xmltodict
pip install pywinrm
cp -R /vagrant/ansible-test/* /home/vagrant
