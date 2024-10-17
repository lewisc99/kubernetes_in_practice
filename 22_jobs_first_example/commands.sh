kubectl apply -f echo-job.yaml
# job.batch/echo-job created

kubectl get pods
# NAME             READY   STATUS
# echo-job-sttd5   0/1     Completed

kubectl logs echo-job-sttd5
# Running in a job

kubectl get jobs
# NAME       DESIRED   SUCCESSFUL
# echo-job   1         1