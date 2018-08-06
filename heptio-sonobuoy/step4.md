Sonobuoy can be extended via plugins.

Plugins have 2 main components:

1. **Plugin Selection**: A section of the YAML config, called `config.json`, that declares which plugins to use in the Sonobuoy run.
1. **Plugin Definition**: A YAML document that defines metadata and the pod(s) to produce a result.

## Plugin Definition

Plugins can exist in:

- `/etc/sonobuoy/plugins.d`
- `$HOME/.sonobuoy/plugins.d`
- `./plugins.d`.

This is configurable by the `PluginSearchPath` value in Sonobuoy config.

### Plugin Contract

The plugin can run any container you want, but the workload must fulfill a contract.

Once a container completes the work, it must signal to Sonobuoy that it's done. The way to do this is by writing a results file. The default is `/tmp/results/done`, but this is configurable via the `ResultsDir` value in the Sonobuoy config.

Once Sonobuoy detects the presence of the `done` file, the results are transmitted back to the Sonobuoy aggregator.
