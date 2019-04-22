We can also create a "highly-available" (HA) cluster with `kind`.

HA in this scenario is more than 1 control-plane node on the same local host.

Let's define a cluster made up of 3 control-plane nodes and 5 worker nodes:

`cat <<EOF > kind-2
kind: Cluster
apiVersion: kind.sigs.k8s.io/v1alpha3
nodes:
- role: control-plane
- role: control-plane
- role: control-plane
- role: worker
- role: worker
- role: worker
- role: worker
- role: worker
EOF`{{execute}}

Now, let's create the cluster: `kind create cluster --config kind-2 --name kind-2`{{execute}}
