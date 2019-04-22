Let's create our first cluster: `kind create cluster`{{execute}}

After a few seconds, we should have our first cluster!

Let's talk to it:

`export KUBECONFIG="$(kind get kubeconfig-path --name="kind")" && kubectl get nodes`{{execute}}

What does docker see?

`docker ps`{{execute}}

Awesome! We're rockin' and rollin'!
