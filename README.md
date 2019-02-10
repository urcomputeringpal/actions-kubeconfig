# actions-kubeconfig
A GitHub Action to configure access to a Kubernetes cluster

> :warning: Please consult the [GitHub Actions Secrets](https://developer.github.com/actions/creating-workflows/storing-secrets/) documentation before using this action.

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
