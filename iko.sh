helm repo add intersystems-charts https://charts.demo.community.intersystems.com
helm repo update
helm search repo intersystems-charts -l


# The nodeSelector=null is set here for simplicity to avoid issues with nodes OS-type
helm upgrade --install iko          \
    intersystems-charts/iris-operator \
    --version 3.1.0                   \
    --namespace iko                   \
    --create-namespace                \
    --atomic                          \
    --wait                            \
    --set nodeSelector=null