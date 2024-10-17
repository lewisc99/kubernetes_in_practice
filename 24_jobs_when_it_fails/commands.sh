kubectl delete job echo-job
kubectl apply -f echo-job.yaml
kubectl get pods --watch