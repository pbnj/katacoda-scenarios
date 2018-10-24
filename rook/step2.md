Deploy the Rook operator: `kubectl apply -f rook/cluster/examples/kubernetes/ceph/operator.yaml`{{execute}}

Verify that the `rook-ceph-operator`, `rook-ceph-agent`, and `rook-discover` pods are in the `Running` state before proceeding: `kubectl -n rook-ceph-system get pod`{{execute}}

Create the Rook cluster: `kubectl apply -f rook/cluster/examples/kubernetes/ceph/cluster.yaml`{{execute}}

**Note**: See the documentation for detailed [cluster configuration settings](https://rook.io/docs/rook/v0.8/ceph-cluster-crd.html)

Verify that mgr, mon, and osds exist in the `rook-ceph` namespace: `kubectl -n rook-ceph get pod`{{execute}}
