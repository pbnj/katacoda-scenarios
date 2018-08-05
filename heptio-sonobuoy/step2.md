Deploy a Sonobuoy pod to our cluster with: `sonobuoy run`{{execute}}

To view actively running pods: `sonobuoy status`{{execute}}

To inspect logs: `sonobuoy logs`{{execute}}

To view the results, we must first copy the output directory from the main Sonobuoy pod to somewhere local: `sonobuoy retrieve .`{{execute}}

Now that we have copied a single `.tar.gz` snapshot from the Sonobuoy pod into our local `.` directory, we can extract the contents into `./results`: `mkdir ./results; tar xzvf *.tar.gz -C ./results`{{execute}}

For more information on the contents of the snapshot, see the [snapshot documentation](https://github.com/heptio/sonobuoy/blob/master/docs/snapshot.md)
