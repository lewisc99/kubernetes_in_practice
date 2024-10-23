## create the dashboard
kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.2.0/aio/deploy/recommended.yamlrd/v2.2.0/aio/deploy/recommended.yaml

## you need to run kubectl proxy to make the Kubernetes API server accessible locally:
kubectl proxy


# Now, open a browser and go to:
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

#if it not works add first in another terminal
 kubectl proxy --address 0.0.0.0 --accept-hosts='.*'

# Create a service account:
kubectl create serviceaccount dashboard-admin-sa

# Bind it to the cluster-admin role:
#linux
kubectl create clusterrolebinding dashboard-admin-sa \
  --clusterrole=cluster-admin \
  --serviceaccount=default:dashboard-admin-sa

#windows:
kubectl create clusterrolebinding dashboard-admin-sa --clusterrole=cluster-admin --serviceaccount=default:dashboard-admin-sa


# Retrieve the service account token:
kubectl get secret $(kubectl get serviceaccount dashboard-admin-sa -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode
