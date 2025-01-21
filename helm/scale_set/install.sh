#!/bin/bash
# A Secret called github-pat containing a PAT needs to exist for this to work.
NAMESPACE="github-worker"
helm install "selfhosted-github-runner" \
    --namespace "${NAMESPACE}" \
    --version "0.10.1" \
    --values "values_scale_set_dind.yaml" \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set
