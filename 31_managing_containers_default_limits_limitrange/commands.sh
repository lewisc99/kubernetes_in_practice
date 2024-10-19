kubectl apply -f default-limit-range.yaml
# limitrange/memory-limit-range created
kubectl apply -f hellok8s.yaml
# pod/hellok8s created
kubectl describe pod hellok8s
# ...
# Limits:
#   cpu:     200m
#   memory:  500Mi
# Requests:
#   cpu:        100m
#   memory:     100Mi
# ...
