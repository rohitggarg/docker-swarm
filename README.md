Running the swarm using vagrant photon os
===
```shell
vagrant up
```

create vault key
```shell
touch vault-key
```

![Swarm](https://mjzocw-dm2305.files.1drv.com/y3mvx71ilq0g0GmYoNb09Er-ybT4IwWZrtPRbfOIpd9q_91cdO67W-2xwZOOl5qwkWdDnrkSE6aid-bkvOfpLmYr30SRC2YFja3aPtLnrpvFOyrNco7wUXU7hwWTMD44JqtGWbgpDWqXZN8Is27o52RbGrX8orFWtMnWPIhVh5_0xk)

Insecure Setup
====

execute ansible command
```shell
ansible-playbook -e@vagrant.yml swarm_config.yml
```

for checking the swarm
```shell
docker -H 192.168.99.20 service ls
docker -H 192.168.99.21 service ls
```

Secure TLS setup
====

```shell
./certs.sh
```

```shell
./server_certs.sh 192.168.99.20 192.168.99.20
./server_certs.sh 192.168.99.21 192.168.99.21
```

enable the values inside swarm_config.yml
```yml
    docker_connect_secure: yes
    docker_connect_certs_path: ./docker-certs
```

execute ansible command
```shell
ansible-playbook -e@vagrant.yml swarm_config.yml
```

for checking the swarm
```shell
docker --tlsverify --tlscacert ./docker-certs/ca.pem --tlscert ./docker-certs/cert.pem --tlskey ./docker-certs/key.pem -H 192.168.99.20:2376 service ls
docker --tlsverify --tlscacert ./docker-certs/ca.pem --tlscert ./docker-certs/cert.pem --tlskey ./docker-certs/key.pem -H 192.168.99.21:2376 service ls
```
