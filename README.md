# ambari_deploy
Deploy Ambari server with ansible. In the end you will have a cluster that is ready to install HDP

### The playbook will:

  - Install and configure postgresql server database
  - Install ambari client in all slave nodes
  - Configure Ambari server to use postgresql database has it's metastore 
  - Starts Ambari server

## Prerequesites

You need to install ansible and have provided ssh access to the sudo "ssh_user" in all nodes

```
pip install ansible
git clone https://github.com/PedroAndrade89/ambari_deploy
cd ambari_deploy
```

## Deploying the app

Edit the inventory file and deploy.sh file and run:

```
./deploy.sh
```

## Access Ambari Server 

```
In your browser:  "http://<ambari-server host>:8080"
```

