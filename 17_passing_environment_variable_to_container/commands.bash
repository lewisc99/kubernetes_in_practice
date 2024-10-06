kubectl apply -f hellok8s.yaml 

curl localhost:30001

#locally
# kubectl port-forward svc/hellok8s-svc 30001:4567
# [v4] Hello, Kubernetes (from hellok8s-69dbd44879-vt8dv)


##then to test again
kubectl apply -f hellok8s-updated.yaml 

curl localhost:30001
#locally
# kubectl port-forward svc/hellok8s-svc 30001:4567
# [v4] It works! (from hellok8s-568f64dd94-bfxhs)