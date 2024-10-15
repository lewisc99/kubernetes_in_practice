kubectl apply -f hellok8s-config.yaml

#then
 kubectl apply -f hellok8s.yaml     

#get one of the pods name
kubectl get pods
# >> 
# NAME                        READY   STATUS        RESTARTS   AGE
# hellok8s-845cc987fb-4bqmg   0/1     Terminating   0          2m51s
# hellok8s-864c595647-5x5xg   1/1     Running       0          4s
# hellok8s-864c595647-rkx2n   1/1     Running       0          3s

#open the container
kubectl exec -it hellok8s-864c595647-rkx2n  -- sh

#then print the message from the config file
cat /config/MESSAGE
#result: It works with a ConfigMap hehe!# 
