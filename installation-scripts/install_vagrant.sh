#!/bin/bash

echo "=========== UPDATING ============="
sudo apt update

echo "========== DOWNLOADING VIRTUALBOX ============"
sudo apt-get install -y virtualbox

echo "=========== DOWNLOADING VAGRANT ============"
curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb

echo "=========== INSTALLING VAGRANR ============"
sudo apt install ./vagrant_2.2.6_x86_64.deb

echo "=========== VAGRANT VERSION ============"
vagrant --version


rm -rf vagrant_2.2.6_x86_64.deb