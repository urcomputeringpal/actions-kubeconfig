# actions-kubeconfig
A GitHub Action to configure access to a Kubernetes cluster

## Usage

```hcl
action "kube config" {
  uses = "./.github/actions/kubeconfig"
  secrets = [
    "TOKEN",
    "CA_CERT",
    "CLUSTER_URL",
  ]
}
```
