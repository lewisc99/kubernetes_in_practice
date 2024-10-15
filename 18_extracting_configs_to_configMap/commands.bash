kubectl apply -f hellok8s-config.yaml

kubectl apply -f hellok8s.yaml

kubectl apply -f service.yaml

curl localhost:30001
# [v4] It works with a ConfigMap! (from hellok8s-54d5fb5765-nl62z)