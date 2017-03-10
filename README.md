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

![Swarm](https://ozyfaq-dm2305.files.1drv.com/y3phWOpIA9MWL40Yi3xyDvaK6YBnpmJ_L1vv4P5HujRpfHtIIZI3T21JzRQkIxJrNZtU1xR_B6nQ3FygdemLsoppthpXkYbWjc7-2Fj2D25vhM2N6HNTADxYfDpiGm9_f_GHKEuHyKb6sREDWx6g0uGEg/Virtual%20Box.png?psid=1)
