kubectl apply -f echo-cronjob.yaml
# cronjob.batch/echo-cronjob created

kubectl get jobs
# No resources found.

# 1 minute later
kubectl get jobs
# NAME                      DESIRED   SUCCESSFUL
# echo-cronjob-1554109380   1         1