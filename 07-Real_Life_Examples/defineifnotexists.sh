#!/bin/bash

# export KUBE_NAMESPACE if KUBE_NAMESPACE isn't defined or exported
export KUBE_NAMESPACE=${KUBE_NAMESPACE_CUSTOM:-$HELM_PROJECT_PREFIX$CI_PROJECT_NAME-$CI_ENVIRONMENT_SLUG}
