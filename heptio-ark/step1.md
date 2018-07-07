Let's pull down the Heptio Ark GitHub repo to help us get started: `git clone https://github.com/heptio/ark`{{execute}}

Apply some basic prerequisites (e.g. CustomResourceDefinitions, namespaces, and RBAC): `kubectl apply -f ark/examples/common/00-prereqs.yaml`{{execute}}

Apply a local storage service (e.g. Minio): `kubectl apply -f ark/examples/minio/`{{execute}}

Deploy an example nginx application: `kubectl apply -f ark/examples/nginx-app/base.yaml`{{execute}}

Check to see that both Ark and nginx deployments have been successfully created:

`kubectl get deployments -l component=ark --namespace=heptio-ark`{{execute}}

`kubectl get deployments --namespace=nginx-example`{{execute}}
