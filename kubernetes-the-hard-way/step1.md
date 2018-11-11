Let's set up our environment we will be working in.

# Installing Utilities

## Base Tools

`sudo apt-get update && sudo apt-get install -y bash-completion curl tmux`{{execute}}

Verification: `tmux -V`{{execute}}

## PKI

The `cfssl` and `cfssljson` command line utilities will be used to provision a PKI Infrastructure and generate TLS certificates.

`sudo curl -Lo /usr/local/bin/cfssl https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 && sudo curl -Lo /usr/local/bin/cfssljson https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 && sudo chmod +x /usr/local/bin/cfssl /usr/local/bin/cfssljson`{{execute}}

Verification: `cfssl version`{{execute}}

## kubectl

The `kubectl` command line utility is used to interact with the Kubernetes API Server.

`sudo curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.12.0/bin/linux/amd64/kubectl && sudo chmod +x /usr/local/bin/kubectl`{{execute}}

Verification: `kubectl version --client`{{execute}}
