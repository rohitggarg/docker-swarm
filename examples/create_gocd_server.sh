docker service create \
    --name gocd-server \
    --publish mode=host,target=8153,published=10000 \
    --mode global \
    --detach=false \
    --constraint 'node.labels.type == bootstrap' \
    gocd/gocd-server:v17.6.0 
