Ambari-Server with postgresql metastore + Ambari Clients
-----------------------------------------------------------------------------

- Expects CentOS/RHEL 7 hosts

This playbook will deploy an Ambari server with postgresql configured as it's metastore and n number of Ambari Clients that will communicate with the Server.
There is tags in place, so if we want to run only a specific role(ex. db_setup) and don't do the full deployment just add --tags "db_setup" to ansible-playbook command.
This was forked from https://github.com/PedroAndrade89/ambari_deploy, I intend it to be a very basic deployment of the
basic structure of the ambari cluster. It is not meant, as other repo do, to manage ambari blueprints.

### Prerequesites

You need to install ansible and have provided ssh access to the sudo "ssh_user" in all nodes

### Initial Site Setup

First we configure the entire cluster by listing our hosts in the 'hosts'
inventory file, grouped by their purpose:

```
[ambari-server]
ambari-server1 ansible_user=...
...

[ambari-clients]
ambari-client1 ansible_user=...
ambari-client2 ansible_user=...
...

[db-host]
ambari-db  ansible_user=...
```

After this we execute following command to deploy:

```
ansible-playbook provision.yml
```

The deployment can be verified by accessing the IP address of the Ambari server in a web browser "http://ambari-server1:8080"

Credentials:

User: admin
Password: admin









