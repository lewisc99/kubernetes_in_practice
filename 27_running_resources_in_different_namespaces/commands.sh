kubectl apply -f namespace.yaml 

kubectl apply -f nginx-pod.yaml
# pod/nginx created
kubectl apply -f nginx-pod.yaml -n my-namespace
# pod/nginx created

kubectl get pods
# NAME    READY   STATUS 
# nginx   1/1     Running

kubectl get pods -n my-namespace
# NAME    READY   STATUS   
# nginx   1/1     Running 