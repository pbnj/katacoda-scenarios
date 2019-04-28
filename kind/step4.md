As you may have noticed, `kind create cluster`, by default, created a single-node cluster.

What if we want an HA cluster, say 3 control-plane node and 3 worker nodes?

What if we also want a custom CNI?

Well, `kind` allows us to configure our clusters using its `v1alpha3` api group.

Let's define our cluster:

```
cat <<EOF > kind-ha
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
- role: worker
- role: worker
kubeadmConfigPatches:
- |
  apiVersion: kubeadm.k8s.io/v1beta1
  kind: ClusterConfiguration
  metadata:
    name: config
  networking:
    podSubnet: "192.168.0.0/16"
- |
  apiVersion: kubeproxy.config.k8s.io/v1alpha1
  kind: KubeProxyConfiguration
  metadata:
    name: config
  mode: "ipvs"
EOF
```{{execute}}

Then, let's use Calico's YAML for our demo purposes: `curl -LO https://docs.projectcalico.org/v3.6/getting-started/kubernetes/installation/hosted/kubernetes-datastore/calico-networking/1.7/calico.yaml`{{execute}}

Now, we can pass this config file to the create our desired cluster (and give it a custom name):

`kind create cluster --config kind-ha --name kind-ha`{{execute}}

Once the cluster has been created, export the new `KUBECONFIG`: 

`export KUBECONFIG="$(kind get kubeconfig-path --name="kind-ha")"`{{execute}}

And, poke around the cluster: `kubectl get all --all-namespaces`{{execute}}

Neat!
