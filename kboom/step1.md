We are currently starting up Kubernetes. This may take a minute.

Once the cluster has started, we will need a more recent version of [`kubectl`](https://kubernetes.io/docs/tasks/tools/install-kubectl) that supports kubectl plugins: 

```
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl \
	&& chmod +x ./kubectl
```{{execute}}

And we will need to install `kboom` plugin:

```
curl https://raw.githubusercontent.com/mhausenblas/kboom/master/kboom -o kubectl-kboom \
	&& chmod +x ./kubectl-kboom \
	&& mv ./kubectl-kboom /usr/local/bin
```{{execute}}
