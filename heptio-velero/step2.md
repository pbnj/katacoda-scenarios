Let's download and install the Velero client:

`curl -LO https://github.com/heptio/velero/releases/download/v0.11.0/velero-v0.11.0-linux-amd64.tar.gz`{{execute}}

`tar -C /usr/local/bin -xzvf velero-v0.11.0-linux-amd64.tar.gz`{{execute}}

Let's backup any resource with labels "app=nginx": `velero backup create nginx-backup --selector app=nginx`{{execute}}

Now, let's simulate a disaster: `kubectl delete namespace nginx-example`{{execute}}

Check that the nginx service and deployment are gone:

`kubectl get deployments --namespace=nginx-example`{{execute}}

`kubectl get services --namespace=nginx-example`{{execute}}

`kubectl get namespace/nginx-example`{{execute}}

You should get no results.

NOTE: You might need to wait for a few minutes for the namespace to be fully cleaned up.
