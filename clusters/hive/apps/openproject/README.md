# OpenProject

## Install

> Due to bitnami sealed secret controller being to slow, the helmchart does not find the secret uses default values. need to create sync waves or app-of-apps

1. Deploy [openproject.sealed-secret.yaml](k8s-manifests/openproject.sealed-secret.yaml) first!
1. Deploy HelmChart manually or via ArgoCD