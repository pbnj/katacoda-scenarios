If you would like to view a Rook dashboard:

- First, create an NodePort service:

```
cat <<EOF > $HOME/rook-dashboard.yaml
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
EOF
```{{execute}}

- Apply the service: `kubectl apply -f $HOME/rook-dashboard.yaml`{{execute}}

- Click on "Rook Dashboard" tab in the terminal window
