As you may have noticed, `kind create cluster`, by default, created a single-node cluster.

What if we want an HA cluster, say 3 control-plane node and 3 worker nodes?

What if we also want a custom CNI?

Well, `kind` allows us to configure our clusters using its `v1alpha3` api group.

Let's define our cluster:

```
cat <<EOF > kind-1
kind: Cluster
apiVersion: kind.sigs.k8s.io/v1alpha3
nodes:
- role: control-plane
  extraMounts:
  - containerPath: /kind/manifests/default-cni.yaml
    hostPath: /root/calico.yaml
    readOnly: true
    type: File
- role: control-plane
- role: control-plane
- role: worker
- role: worker
- role: worker
kubeadmConfigPatches:
- |
  apiVersion: kubeadm.k8s.io/v1beta1
  kind: ClusterConfiguration
  metadata:
    name: config
  networking:
    serviceSubnet: "10.96.0.1/12"
    podSubnet: "192.168.0.0/16"
- |
  apiVersion: kubeproxy.config.k8s.io/v1alpha1
  kind: KubeProxyConfiguration
  metadata:
    name: config
  mode: "ipvs"
EOF
```{{execute}}

Now, we can pass this config file to the create our desired cluster (and give it a custom name):

`kind create cluster --config kind-1 --name kind-1`{{execute}}

Once the cluster has been created, export the new `KUBECONFIG`: 

`export KUBECONFIG="$(kind get kubeconfig-path --name="kind-1")"`{{execute}}

And, poke around the cluster: `kubectl get all --all-namespaces`{{execute}}

Neat!
