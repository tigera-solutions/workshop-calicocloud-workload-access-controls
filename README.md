
## Setup

Follow the instructions for your operating system.

  - Kind - https://kind.sigs.k8s.io/docs/user/quick-start/#installation
  - Helm - https://helm.sh/docs/intro/install/

1) kind create cluster --config kind-calico.yaml

2) kubectl cluster-info --context kind-kind

3) kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml

4) kubectl create -f custom-resources.yaml

5) watch kubectl get tigerastatus

6) Connect cluster with curl bash script.

7) kubectl get tigerastatus


