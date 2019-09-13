Let's pull down the Heptio Velero GitHub repo to help us get started: `git clone https://github.com/heptio/velero`{{execute}}

Let's download and install the Velero client:
`curl -LO https://github.com/heptio/velero/releases/download/v1.1.0/velero-v1.1.0-linux-amd64.tar.gz`{{execute}}

`tar -C /usr/local/bin -xzvf velero-v1.1.0-linux-amd64.tar.gz`{{execute}}

Add directory to PATH
`export PATH=$PATH:/usr/local/bin/velero-v1.1.0-linux-amd64/`{{execute}}

Create a Velero-specific credentials file (`credentials-velero`) in your local directory:

```
[default]
aws_access_key_id = minio
aws_secret_access_key = minio123
```

Start the server and the local storage service. In the Velero directory, run:
`kubectl apply -f velero/examples/minio/00-minio-deployment.yaml`

```
velero install \
    --provider aws \
    --bucket velero \
    --secret-file ./credentials-velero \
    --use-volume-snapshots=false \
    --backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://minio.velero.svc:9000```{{execute}}

This example assumes that it is running within a local cluster without a volume provider capable of snapshots, so no `VolumeSnapshotLocation` is created (`--use-volume-snapshots=false`).
Apply a local storage service (e.g. Minio): `kubectl apply -f velero/examples/minio/`{{execute}}

Deploy an example nginx application: `kubectl apply -f velero/examples/nginx-app/base.yaml`{{execute}}

Check to see that both Velero and nginx deployments have been successfully created:

`kubectl get deployments -l component=minio --namespace=velero`{{execute}}

`kubectl get deployments --namespace=nginx-example`{{execute}}
