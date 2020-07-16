Docker Photon Config
=========

Required to configure photon os for docker swarm networking connections and upgrade docker version at the start

Requirements
------------

This role has been made specifically to work against photon os, however, the same role can be used by an OS which has tdnf and is RHEL based linux

Role Variables
--------------

swarm_port: port on which docker swarm connection should be published inside the cluster
ansible_ipv4: the ipv4 interface on which the binding of ports for overlay network should be added in the firewall

Dependencies
------------

None

Example Playbook
----------------

This is how to run the role:

    - hosts: servers
      roles:
         - { role: docker-photon-config, swarm_port: 12377 }

License
-------

BSD

Author Information
------------------

Rohit Garg (rohitgarg19@gmail.com, github.com/rohitggarg)
