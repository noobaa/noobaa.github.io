# NooBaa Install

## Prerequisites

- [noobaa-operator cli](noobaa-operator-cli.md) - should be installed
- Setup kubeconfig connecting you to a Kubernetes cluster or minikube.

## Install to Kubernetes

Once NooBaa CLI installed, simply Install the operator and noobaa services with: 
```
noobaa install
```
The install output includes S3 service endpoint and credentials, as well as web management console address with credentials.


Getting this information is always available with: 
```
noobaa status
```

Remove NooBaa deployment can be done with: 

```
noobaa uninstall
```

## Video tutorial

Click the image or the link to open the [noobaa install on YouTube](https://www.youtube.com/watch?v=QXr2pSL3AVY)

[![YOUTUBE](https://img.youtube.com/vi/QXr2pSL3AVY/0.jpg)](https://www.youtube.com/watch?v=QXr2pSL3AVY)


## Troubleshooting

- Verify that there are enough resources for noobaa pods:
    - `kubectl describe pod | less`
    - `kubectl get events --sort-by .metadata.creationTimestamp`
- Make sure that there is a single **default** storage class:
    - `kubectl get sc`
    - or specify which storage class to use with `noobaa install --db-storage-class XXX --pv-pool-default-storage-class YYY`


## Install with Minikube on Mac

Install minikube and noobaa cli
```bash
brew install minikube
brew install docker-machine-driver-hyperkit
brew install noobaa/noobaa/noobaa
```

Start minikube
```bash
minikube config set vm-driver hyperkit
minikube config set memory 4096
minikube config set cpus 4
minikube config view
minikube start
```

Setup env
```bash
. <(noobaa completion)
eval $(minikube docker-env)
```

Create and set kubernetes namespace
```bash
kubectl create ns noobaa
kubectl config set-context --current --namespace noobaa
```

Install noobaa
```bash
noobaa install
```

## Install with Minikube on Ubuntu

The following script was tested with the following versions:
- Ubuntu 18.04 LTS server edition
- minikube v1.7.2
- kubectl v1.17.3
- noobaa v2.0.10

Cleanup previous versions 
This is just in case, because the tools installed from snap do not work well:
```bash
sudo snap remove kubectl minikube docker
sudo apt-get remove docker docker-engine docker.io
```

Install docker
```bash
sudo apt-get install docker.io
sudo systemctl start docker
sudo systemctl enable docker
```

Install kubectl
```bash
KUBECTL_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mkdir -p /usr/local/bin/
sudo install kubectl /usr/local/bin/
```

Install minikube
```bash
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
```

Install noobaa CLI
```bash
NOOBAA_VERSION=v2.0.10
curl -Lo noobaa https://github.com/noobaa/noobaa-operator/releases/download/$NOOBAA_VERSION/noobaa-linux-$NOOBAA_VERSION
chmod +x noobaa
sudo install noobaa /usr/local/bin/
```

Start minikube
```bash
minikube config set vm-driver none
minikube config set memory 4096
minikube config set cpus 4
minikube config view
sudo minikube start
```

Check kubectl is working
Might need to fix permissions to allow non-root to use the tools
```bash
sudo chown -R $(id -un):$(id -gn) .minikube/ .kube/
kubectl get node
```

Setup env
```bash
. <(noobaa completion)
eval $(minikube docker-env)
```

Create and set kubernetes namespace
```bash
kubectl create ns noobaa
kubectl config set-context --current --namespace noobaa
```

Install noobaa
```bash
noobaa install
```

## Next steps

- [noobaa status](noobaa-status.md)
- [Back](README.md)
