Run: `ark restore create --from-backup nginx-backup`{{execute}}

Run: `ark restore get`{{execute}}

NOTE: The restore can take a few moments to finish. During this time, the STATUS column reads InProgress.

After a successful restore, the STATUS column is Completed, and WARNINGS and ERRORS are 0. All objects in the nginx-example namespace should be just as they were before you deleted them.

If there are errors or warnings, you can look at them in detail:

`ark restore describe <RESTORE_NAME>`
