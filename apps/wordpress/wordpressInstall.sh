helm repo add bitnami https://charts.bitnami.com/bitnami
helm install wordpress -f values.yaml bitnami/wordpress -n wordpress --create-namespace
