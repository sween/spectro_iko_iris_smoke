cat <<EOF | kind create cluster --config=-
kind: Cluster
name: ikosqlcluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
  - role: control-plane
  - role: worker
networking:
  disableDefaultCNI: true
EOF
cilium install --version v1.16.0
cilium status --wait


