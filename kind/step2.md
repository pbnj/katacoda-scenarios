Let's create our first cluster: `kind create cluster`{{execute}}

After a few seconds, we should have our first cluster!

Let's configure our `kubectl` to talk to that cluster:

`export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"`{{execute}}

And, now, let's talk to our cluster: `kubectl get nodes`{{execute}}

Sweet! In about 1 minute, the node status should change from "NotReady" to "Ready".

What does docker see?

`docker ps`{{execute}}

Awesome! We're rockin' and rollin'!
