#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add /home/dudoleitor/ansible/ansible-mk2.key
ansible-playbook /home/dudoleitor/ansible/ansible-books/upgrade.yml

