#!/bin/bash -le

KUBECONFIG=$HOME/.kube/config
mkdir -p "$(dirname "$KUBECONFIG")"

kubectl config --kubeconfig=$KUBECONFIG \
  set-cluster \
  kubernetes \
  --server=$CLUSTER_URL

kubectl config set clusters.kubernetes.certificate-authority-data "$CA_CERT"

kubectl config --kubeconfig=$KUBECONFIG \
  set-credentials github-actions --token=$TOKEN

kubectl config --kubeconfig=$KUBECONFIG \
  set-context github-actions \
  --cluster=kubernetes \
  --user=github-actions

if [ -n "$NAMESPACE" ]; then
  kubectl config --kubeconfig=$KUBECONFIG \
    set-context github-actions \
    --namespace=$NAMESPACE
fi

kubectl config --kubeconfig=$KUBECONFIG \
  use-context github-actions

echo "kubeconfig written to $KUBECONFIG"
