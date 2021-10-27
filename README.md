# workshop-calicocloud-workload-access-controls

## Prerequisites

Install Kind and Helm.  Follow the instructions for your operating system.

  - Kind - https://kind.sigs.k8s.io/docs/user/quick-start/#installation
  - Helm - https://helm.sh/docs/intro/install/

## Setup

Create Kind cluster

```
kind create cluster --config setup/kind-calico.yaml
```

Set kubernetes cli context to the new cluster

```
kubectl cluster-info --context kind-kind
```

Install Calico

```
kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml
kubectl create -f setup/custom-resources.yaml
watch kubectl get tigerastatus
```

Login to Calico Cloud and connect cluster with kubeadm curl bash script.

```
kubectl get tigerastatus
```

Configure Calico Cloud logging

```
kubectl apply -f setup/felix.yaml
```

## Deploy Ubuntu and Wordpress demo apps

```
kubectl apply -f apps/shell/ubuntu.yaml
```

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install wordpress -f apps/wordpress/values.yaml bitnami/wordpress -n wordpress --create-namespace
kubectl get pods -n wordpress -w
```

## Test the demo apps

```
kubectl exec -n default ubuntu -- id
``` 

```
curl -vI http://localhost
curl -vIk https://localhost
```

## Global and Namespaced NetworkSets

Live demo

## DNS Policies

Live demo

## Egress Access Gateway

Live demo
