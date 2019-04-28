When you're done, and don't need the results anymore, use `cleanup` subcommand to get rid of the pods: `kubectl kboom cleanup`{{execute}}

Note: if you `cleanup` too soon before a test is complete, you may have orphaned pods. You may run `kubectl delete po -l=generator=kboom` to get rid of all orphaned pods.
