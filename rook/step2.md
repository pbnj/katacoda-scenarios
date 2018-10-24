Deploy the Rook operator: `kubectl apply -f rook/cluster/examples/kubernetes/ceph/operator.yaml`{{execute}}

Verify that the `rook-ceph-operator`, `rook-ceph-agent`, and `rook-discover` pods are in the `Running` state before proceeding: `kubectl -n rook-ceph-system get pod`{{execute}}

Create the Rook cluster: `kubectl apply -f rook/cluster/examples/kubernetes/ceph/cluster.yaml`{{execute}}

**Note**: See the documentation for detailed [cluster configuration settings](https://rook.io/docs/rook/v0.8/ceph-cluster-crd.html)

Verify that mgr, mon, and osds exist in the `rook-ceph` namespace: `kubectl -n rook-ceph get pod`{{execute}}

**Bonus**: 

If you would like to view a Rook dashboard:

1. First, create an NodePort service: `cat <<EOF >rook-dashboard.yaml
apiVersion: v1
kind: Service
metadata:
  name: rook-ceph-mgr-dashboard-external
  namespace: rook-ceph
  labels:
    app: rook-ceph-mgr
    rook_cluster: rook-ceph
spec:
  ports:
  - name: dashboard
    port: 7000
    protocol: TCP
    targetPort: 7000
    nodePort: 30000
  selector:
    app: rook-ceph-mgr
    rook_cluster: rook-ceph
  sessionAffinity: None
  type: NodePort
EOF`{{execute}}
1. Apply the service: `kubectl apply -f rook-dashboard.yaml`{{execute}}
1. Hit https://2886795303-30000-cykoria01.environments.katacoda.com
  - or, click on the "+" tab icon, click on "select port to view on Host 1", enter port "30000".
