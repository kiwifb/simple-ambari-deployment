Ambari-Server with postgresql metastore + Ambari Clients
-----------------------------------------------------------------------------

- Expects Ubuntu (18.04) hosts

This playbook will deploy a simple Ambari server with the default ambari database and n number of Ambari Clients that will communicate with the Server.
There is tags in place, so if we want to run only a specific role and don't do the full deployment just add --tags "some_tag" to the ansible-playbook command.
This was forked from https://github.com/PedroAndrade89/ambari_deploy, I intend it to be a very basic deployment of the
basic structure of the ambari cluster. It is not meant, as other repo do, to manage ambari blueprints. The original does a separate deployment and configuration of postgresql, this may be re-added as an option in the future.
A version for Centos/RedHat 7 is currently available in a separate branch.

### Prerequesites

* You need to install ansible on your deployment machine
* have provided ssh access with the `ansible_user` from the deployment machine to all nodes
* the `ansible_user` on all the nodes needs to be able to sudo for all commands without a password

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

```

After this we execute following command to deploy:

```
ansible-playbook provision.yml
```

The deployment can be verified by accessing the IP address of the Ambari server in a web browser "http://ambari-server1:8080"

Credentials:

User: admin
Password: admin









