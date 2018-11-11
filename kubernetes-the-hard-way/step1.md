Let's set up our environment we will be working in.

Prerequisites:

- `tmux` allows us to manage multiple shell sessions at the same time.
- The `cfssl` and `cfssljson` command line utilities will be used to provision a PKI Infrastructure and generate TLS certificates.
- The `kubectl` command line utility is used to interact with the Kubernetes API Server.

Verify that the tools we need are installed properly:

- `tmux -V`{{execute}}
- `cfssl version`{{execute}}
- `kubectl version --client`{{execute}}
