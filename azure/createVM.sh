# Create a virtual machine

# Create an Azure resource group.
az group create --name QuickstartAnsible-rg --location "north Europe"

# Create the Azure virtual machine for Ansible.
az vm create \
--resource-group QuickstartAnsible-rg \
--name QuickstartAnsible-vm \
--image OpenLogic:CentOS:7.7:latest \
--admin-username azureuser \
--admin-password <password>

#Get the public Ip address of the Azure virtual machine.
az vm show -d -g QuickstartAnsible-rg -n QuickstartAnsible-vm --query publicIps -o tsv

ssh -i ~/.ssh/id_rsa ansible-user@20.234.15.176
