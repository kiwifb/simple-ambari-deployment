Ambari-Server with postgresql metastore + Ambari Clients
-----------------------------------------------------------------------------

- Test made with Ansible 2.7.5
- Expects CentOS/RHEL 6/7 hosts

This playbook will deploy an Ambari server with postgresql configured as it's metastore and n number of Ambari Clients that will communicate with the Server.
There is tags in place, so if we want to run only a specific role(ex. db_setup) and don't do the full deployment just add --tags "db_setup" to ansible-playbook command

### Prerequesites

You need to install ansible and have provided ssh access to the sudo "ssh_user" in all nodes

```
pip install ansible
git clone https://github.com/PedroAndrade89/ambari_deploy
cd ambari_deploy
```

### Initial Site Setup

First we configure the entire cluster by listing our hosts in the 'hosts'
inventory file, grouped by their purpose:

```
[ambari-server]
pandrade-1

[ambari-clients]
pandrade-[2:3]


[all-nodes]
pandrade-[1:3]


[db-host]
pandrade-1
```

After this we execute following command to deploy:

```
ansible-playbook -u "ssh_user" --inventory-file=hosts provision.yml
```

The deployment can be verified by accessing the IP address of the Ambari server in a web browser "http://ambari-server:8080"

Credentials:

User: admin
Password: admin









