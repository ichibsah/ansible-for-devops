#!/bin/bash

# https://learn.microsoft.com/en-us/azure/developer/ansible/install-on-linux-vm?tabs=azure-cli#install-ansible-on-an-azure-linux-virtual-machine
# Update all packages that have available updates.
sudo apt update -y

# Install Python 3 and pip.
sudo apt install -y python3-pip

# Upgrade pip3.
sudo pip3 install --upgrade pip

# Install Ansible.
pip3 install "ansible==2.9.17"

# Install Ansible azure_rm module for interacting with Azure.
pip3 install ansible[azure]

# Ansible 2.10 with azure.azcollection

# Update all packages that have available updates.
sudo apt update -y

# Install Python 3 and pip.
sudo apt install -y python3-pip

# Upgrade pip3.
sudo pip3 install --upgrade pip

# Install Ansible az collection for interacting with Azure.
ansible-galaxy collection install azure.azcollection

# Install Ansible modules for Azure
sudo pip3 install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt