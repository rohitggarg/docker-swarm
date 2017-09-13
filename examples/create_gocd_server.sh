docker service create \
    --name gocd-server \
    --publish mode=host,target=10000,published=8153 \
    --mode global \
    --detach=false \
    --constraint 'node.labels.type == bootstrap' \
    gocd/gocd-server:v17.6.0 
