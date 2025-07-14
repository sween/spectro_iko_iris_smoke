helm repo add ikosql https://sween.github.io/spectro_iko_iris_smoke
helm repo update
helm search repo ikosql -l

helm upgrade --install ikosql ikosql/ikosql --namespace iko