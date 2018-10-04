Take a moment to explore the different Sonobuoy CLI commands and options: `sonobuoy help`{{execute}}

To deploy the latest version of Sonobuoy pods to our cluster: `sonobuoy run --mode=Quick --sonobuoy-image gcr.io/heptio-images/sonobuoy:latest`{{execute}}

**Note:** Sonobuoy conformance tests may take upwards of 60 minutes to complete, but Katacoda scenarios have a shorter life span, hence the `Quick` mode.

To view actively running pods: `sonobuoy status`{{execute}}

To inspect logs: `sonobuoy logs`{{execute}}

Alternatively, you may follow the log trail: `sonobuoy logs -f`{{execute}} (`CTRL+C` or `^C` to exit)
