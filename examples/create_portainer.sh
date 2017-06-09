docker service create \
    --name portainer \
    --publish mode=host,target=9000,published=9000 \
    --mode global \
    --constraint 'node.labels.type == bootstrap' \
    --mount type=bind,src=/root/.docker,dst=/certs \
    portainer/portainer \
    -H tcp://10.195.0.1:2376 --tlsverify