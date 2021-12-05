# Creating Kibana deploy
kubectl apply -f efk-demo/kibana-deployment.yaml

# Creating Kibana Service (LB == public loadbalancer)
kubectl apply -f efk-demo/kibana-service.yaml
