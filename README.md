# actions-kubeconfig
A GitHub Action to configure access to a Kubernetes cluster

## Usage

```hcl
action "kube config" {
  uses = "urcomputeringpal/actions-kubeconfig@master"
  secrets = [
    "TOKEN",
    "CA_CERT",
    "CLUSTER_URL",
  ]
}
```
