Let's pull down the Heptio Velero GitHub repo to help us get started: `git clone https://github.com/heptio/velero`{{execute}}

Apply some basic prerequisites (e.g. CustomResourceDefinitions, namespaces, and RBAC): `kubectl apply -f velero/examples/common/00-prereqs.yaml`{{execute}}

Apply a local storage service (e.g. Minio): `kubectl apply -f velero/examples/minio/`{{execute}}

Deploy an example nginx application: `kubectl apply -f velero/examples/nginx-app/base.yaml`{{execute}}

Check to see that both Velero and nginx deployments have been successfully created:

`kubectl get deployments -l component=velero --namespace=velero`{{execute}}

`kubectl get deployments --namespace=nginx-example`{{execute}}
