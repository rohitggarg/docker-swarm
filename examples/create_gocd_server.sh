docker service create \
    --name gocd-server \
    --publish mode=host,target=8153,published=10000 \
    --publish mode=host,target=8154,published=10001 \
    --mode global \
    --detach=false \
    --mount type=volume,src=godata,dst=/godata \
    --constraint 'node.labels.type == bootstrap' \
    gocd/gocd-server:v17.8.0 
