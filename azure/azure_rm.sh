# Download inventory script
$ wget https://raw.githubusercontent.com/ansible-community/contrib-scripts/main/inventory/azure_rm.py

# Execute /bin/uname on all instances in the Testing resource group
$ ansible -i azure_rm.py Testing -m shell -a "/bin/uname -a"

# Execute win_ping on all Windows instances
$ ansible -i azure_rm.py windows -m win_ping

# Execute ping on all Linux instances
$ ansible -i azure_rm.py linux -m ping

# Use the inventory script to print instance specific information
$ ./azure_rm.py --host my_instance_host_name --resource-groups=Testing --pretty

# Use the inventory script with ansible-playbook
$ ansible-playbook -i ./azure_rm.py test_playbook.yml