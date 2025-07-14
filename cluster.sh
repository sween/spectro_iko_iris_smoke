cat <<EOF | kind create cluster --config=-
kind: Cluster
name: ikosql
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
  - role: control-plane
  - role: worker
networking:
  disableDefaultCNI: true
EOF
cilium install --version v1.16.0
cilium status --wait

helm repo add ikosql https://sween.github.io/spectro_iko_iris_smoke
helm repo update
helm search repo ikosql -l

helm install release123 ikosql/ikosql

