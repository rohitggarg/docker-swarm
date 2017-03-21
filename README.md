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

![Swarm](https://mjzocw-dm2305.files.1drv.com/y3mvx71ilq0g0GmYoNb09Er-ybT4IwWZrtPRbfOIpd9q_91cdO67W-2xwZOOl5qwkWdDnrkSE6aid-bkvOfpLmYr30SRC2YFja3aPtLnrpvFOyrNco7wUXU7hwWTMD44JqtGWbgpDWqXZN8Is27o52RbGrX8orFWtMnWPIhVh5_0xk)
