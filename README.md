Running the swarm using vagrant photon os
===
```shell
vagrant up
```

create vault key
```shell
touch vault-key
```

execute ansible command
```shell
ansible-playbook -e@vagrant.yml swarm_config.yml
```

