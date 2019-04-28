`kboom` does the load test in-cluster as a [Kubernetes job](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/).

This allows you to do multiple runs and compare outcomes in a straight-forward manner.

To generate load, you use the `generate` subcommand, specifying the number of pod and the timeout in seconds (that is, if a pod is not running within that time, it's considered a failure).

In this example, we will create 10 pods with a 14-second timeout:

`kubectl kboom generate --mode=scale:14 --load=pods:10`{{execute}}

To view the results, you may invoke the `results` subcommand as often as you like: `kubectl kboom results`{{execute}}
