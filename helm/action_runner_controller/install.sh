#!/bin/bash
# See https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/quickstart-for-actions-runner-controller#installing-actions-runner-controller
NAMESPACE="github-worker" # provided by WIIT
VERSION="0.10.1"
helm install arc \
    --namespace "${NAMESPACE}" \
    --values values_controller.yaml \
    --version "${VERSION}" \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set-controller
