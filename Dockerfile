FROM gcr.io/cloud-builders/kubectl

COPY kubeconfig.sh /kubeconfig.sh
ENTRYPOINT ["/bin/bash", "/kubeconfig.sh"]
