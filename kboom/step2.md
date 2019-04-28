Now, we need to create the expected resources for `kboom`.

By default, `kboom` expects a namespace with the same name: `kubectl create ns kboom`{{execute}}

Alternatively, you can specify `--namespace` parameter to overwrite it.

Then, apply the service account and RBAC policies: 

```
curl -LO https://raw.githubusercontent.com/mhausenblas/kboom/master/permissions.yaml \
	&& kubectl apply -f permissions.yaml
```{{execute}}

Now, that we're all set up, let's learn how to use `kboom`.
