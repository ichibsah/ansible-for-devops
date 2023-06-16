docker build -t docker-agent-ansible:latest . 
#
ansible-inventory -y --list
#
ansible-playbook run-main.yml # works