# Installing utilities

## Base utilities
apt update
apt install -y bash-completion curl tmux

## PKI utilities
sudo curl -Lo /usr/local/bin/cfssl https://pkg.cfssl.org/R1.2/cfssl_linux-amd64
sudo curl -Lo /usr/local/bin/cfssljson https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
sudo chmod +x /usr/local/bin/cfssl /usr/local/bin/cfssljson

## Kubectl
sudo curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.12.0/bin/linux/amd64/kubectl
sudo chmod +x /usr/local/bin/kubectl
