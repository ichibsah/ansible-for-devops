#!/bin/bash
#
# Multi-server tests for the orchestration example.
#set -e
ansible-inventory --list
# Other commands from the book.
#ansible multi -b -m apt -a "name=chrony state=present"
#ansible multi -b -K -m apt -a "name=chrony state=present"
#ansible multi -m stat -a "path=/etc/environment"
#ansible multi -m copy -a "src=/etc/hosts dest=/tmp/hosts"
#ansible multi -b -m fetch -a "src=/etc/hosts dest=/tmp"
#ansible multi -m file -a "dest=/tmp/test mode=644 state=directory"
#ansible multi -m file -a "dest=/tmp/test state=absent"
#ansible multi -bK -B 3600 -P 0 -a "apt -y update"
#ansible-playbook -bK -vvv main.yml
#ansible-playbook -bk -vvv -u=ibrahim main.yml
#ansible-playbook -bk -vvv firsttime.yml > firsttime.log
#ansible-playbook -bk firsttime.yml
#ansible-playbook -b -vvv main.yml > main.log
# ansible-playbook -b --limit provision provisions.yml
# ansible-playbook -b --limit allservers main.yml
# ansible-playbook -b -c local babs.yml
# #ansible-playbook -b --limit provision provisions.yml
# ansible-playbook -b -c local main.yml
###ansible-playbook -b --limit provision provisions.yml # works
ansible-playbook provisions.yml # works
ansible-playbook main.yml # works
ansible-playbook bashrc.yml # works
ansible-playbook ansible.yml # works
ansible-playbook update.yml # works
#ansible-playbook -bK test.yml
#ansible-playbook -b main.yml
#ansible-playbook -b --list-host main.yml
#ansible-playbook -bk -vvv main.yml
#ansible-playbook -bk main.yml
#ansible-playbook -bK main.yml
#ansible-playbook localrun.yml --connection=local