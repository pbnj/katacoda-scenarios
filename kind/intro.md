Kubernetes-in-Docker (kind) is a tool for running local Kubernetes clusters using Docker container “nodes”.

kind is primarily designed for testing Kubernetes 1.11+, initially targeting the [conformance tests](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/conformance-tests.md).

kind consists of:

- Go [packages](https://github.com/kubernetes-sigs/kind/tree/master/pkg) implementing [cluster creation](https://github.com/kubernetes-sigs/kind/tree/master/pkg/cluster), [image build](https://github.com/kubernetes-sigs/kind/tree/master/pkg/build), etc.
- A command line interface ([`kind`](https://github.com/kubernetes-sigs/kind/tree/master/main.go)) built on these packages.
- Docker [image(s)](https://github.com/kubernetes-sigs/kind/tree/master/images) written to run systemd, Kubernetes, etc.
- [`kubetest`](https://github.com/kubernetes/test-infra/tree/master/kubetest) integration also built on these packages (WIP)

kind bootstraps each “node” with [`kubeadm`](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm/).

For more details, see the [docs](https://kind.sigs.k8s.io).
