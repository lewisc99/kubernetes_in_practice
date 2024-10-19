kubectl apply -f namespace.yaml

kubectl apply -f pods.yaml
# pod/hellok8s created
# pod/hellok8s created

kubectl apply -f service.yaml -n default
# service/hellok8s-svc created

kubectl apply -f service.yaml -n my-namespace
# service/hellok8s-svc created

# Now that we are inside our container, let’s see how the DNS entries for our services behave
kubectl exec -it hellok8s -- sh

#install curl
apt update && apt install curl -y

curl hellok8s-svc:4567
# [v4] Hello, Kubernetes (from hellok8s)

curl hellok8s-svc.default:4567
# [v4] Hello, Kubernetes (from hellok8s)

curl hellok8s-svc.my-namespace:4567
# [v3] Hello, Kubernetes, from hellok8s!


kubectl exec -it hellok8s -n my-namespace -- sh

#install curl
apt update && apt install curl -y

# Now inside the container

curl hellok8s-svc:4567
# [v3] Hello, Kubernetes, from hellok8s!

curl hellok8s-svc.default:4567
# [v4] Hello, Kubernetes (from hellok8s)

curl hellok8s-svc.my-namespace:4567
# [v3] Hello, Kubernetes, from hellok8s!