Let's write a custom Sonobuoy plugin that targets a specific E2E test!

First, create the home directory for our plugin: `mkdir -p $HOME/.sonobuoy/plugins.d`{{execute}}

Second, let's create the plugin's YAML config: `cat <<EOF >$HOME/.sonobuoy/plugins.d/e2e-focus.yaml

---
sonobuoy-config:
  driver: Job        # Job or DaemonSet. Job runs once per run, Daemonset runs on every node per run.
  plugin-name: e2e   # The name of the plugin
  result-type: e2e   # The name of the "result type." Usually the name of the plugin.
spec:                # A kubernetes container spec
  env:
  - name: E2E_FOCUS
    value: Pods should be submitted and removed
  image: gcr.io/heptio-images/kube-conformance:latest
  imagePullPolicy: Always
  name: e2e
  volumeMounts:
  - mountPath: /tmp/results
    name: results
    readOnly: false
  - mountPath: /var/log/test
    name: test-volume
extra-volumes:
- name: test-volume
  hostPath:
    # directory location on host
    path: /data
EOF`{{execute}}

Now, let's run it: `kubectl apply -f $HOME/.sonobuoy`
