As you may have noticed, `kind create cluster`, by default, created a single-node cluster.

What if we want a multi-node cluster, say 1 control-plane node and 3 worker nodes?

Well, `kind` allows us to configure our clusters via a YAML configuration file.

Let's define our cluster:

```
cat <<EOF > kind-1
kind: Cluster
apiVersion: kind.sigs.k8s.io/v1alpha3
nodes:
- role: control-plane
- role: worker
- role: worker
- role: worker
EOF
```{{execute}}

Now, let's create our cluster: `kind create cluster --config kind-1 --name kind-1`{{execute}}
