kubectl apply -f hellok8s-secret.yaml
kubectl apply -f deployment.yaml

kubectl get pods
# NAME                        READY   STATUS
# hellok8s-6d7579848d-f56wb   1/1     Running
# hellok8s-6d7579848d-kzq57   1/1     Running

# Replace the pod name to what you have running locally
kubectl exec -it hellok8s-6d7579848d-kzq57 --  env | grep MESSAGE

#or
kubectl exec -it hellok8s-864c595647-rkx2n  -- sh

#then
env | grep MESSAGE
# MESSAGE=It works with a Secret