# Creating Config map
kubectl apply -f efk-demo/fluentd-es-configmap.yaml

# Creating Fluent D Daemon Set
kubectl apply -f efk-demo/fluentd-es-ds.yaml
