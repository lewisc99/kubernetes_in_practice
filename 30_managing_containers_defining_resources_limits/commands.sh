#pull the image
docker pull busybox    

#apply the pod image
kubectl apply -f limited-busybox.yaml  

#see cpu resources
kubectl exec -it limited-busybox -- top
# ...
# PID  PPID USER %CPU COMMAND
#   1     0 root 24.7 dd if /dev/zero of /dev/null
# ...