#!/bin/sh

echo "Starting auto-deployment..."

ansible-playbook -u "ssh_user" --inventory-file=hosts env_prepare.yml
ansible-playbook -u "ssh_user" --inventory-file=host ambari_agent_deploy.yml
ansible-playbook -u "ssh_user" --inventory-file=host setup_database.yml
ansible-playbook -u "ssh_user" --inventory-file=host ambari_server_deploy.yml
ansible-playbook -u "ssh_user" --inventory-file=host ambari_setup.yml

