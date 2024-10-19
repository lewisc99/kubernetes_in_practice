#pull the image
docker pull busybox

#apply the Pod
kubectl apply -f busybox.yaml

#See if the pod is running 
kubectl get pods

# #NAME       READY   STATUS         RESTARTS   AGE
# busybox    0/1     ErrImagePull   0          25s
# hellok8s   1/1     Running        0          63m

# Now we can run the top command to see how much CPU is being used:
kubectl exec -it busybox -- top
# Mem: 1914036K used, 98332K free, 3752K shrd, 14092K buff, 845140K cached
# CPU:  9.3% usr  7.8% sys  0.0% nic 81.7% idle  0.2% io  0.0% irq  0.7% sirq
# Load average: 3.52 3.05 2.72 2/673 12