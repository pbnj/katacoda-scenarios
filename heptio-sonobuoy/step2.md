Take a moment to explore the different Sonobuoy CLI commands and options: `sonobuoy help`{{execute}}

To deploy a Sonobuoy pod to our cluster with: `sonobuoy run --mode=Quick`{{execute}}

**Note:** Sonobuoy conformance tests may take upwards of 60 minutes to complete. Katacoda scenarios have a shorter time limit, hence the quick mode.

To view actively running pods: `sonobuoy status`{{execute}}

To inspect logs: `sonobuoy logs`{{execute}}

Alternatively, you may follow the log trail: `sonobuoy logs -f`{{execute}} (`CTRL+C` or `^C` to exit)

To view the results, we must first copy the output directory from the main Sonobuoy pod to somewhere local: `sonobuoy retrieve .`{{execute}}

Now that we have copied a single `.tar.gz` snapshot from the Sonobuoy pod into our local `.` directory, we can extract the contents into `./results`: `mkdir ./results; tar xzvf *.tar.gz -C ./results`{{execute}}

For more information on the contents of the snapshot, see the [snapshot documentation](https://github.com/heptio/sonobuoy/blob/master/docs/snapshot.md)
