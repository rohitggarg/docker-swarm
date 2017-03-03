Running the swarm using vagrant photon os
===
```shell
vagrant up
```

execute ansible command
```shell
ansible-playbook -e@vagrant.yml swarm_config.yml
```

My Private space
====
creation
execute docker command

```shell
docker run -it -w /ansible/work/infrastructure \
-v `pwd`:/ansible/work \
-v `pwd`/vmware_vars:/ansible/roles/vmware-vm-create/vars \
-v `pwd`/vmware_vars:/ansible/roles/vmware-vm-modify/vars \
registry.mckinsey.com/mck/ansible-deployer \
ansible-playbook -e@../vm_password.yml swarm_nodes.yml
```

execute ansible command
```shell
ansible-playbook -e@password.yml swarm_config.yml
```

cleanup
execute docker command

```shell
docker run -it -w /ansible/work/infrastructure \
-v `pwd`:/ansible/work \
-v `pwd`/vmware_vars:/ansible/roles/vmware-vm-remove/vars \
registry.mckinsey.com/mck/ansible-deployer \
ansible-playbook -e@../password.yml cleanup_swarm.yml
```
