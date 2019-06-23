#!/usr/bin/env bash

export APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get update
sudo -E apt-get -y install dirmngr
sudo -E apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
sudo -E apt-get update
sudo -E apt -y install ansible
