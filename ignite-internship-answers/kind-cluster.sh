#!/bin/bash

CLUSTER_NAME="kind-local-cluster"

# Check if Kind is installed
if ! command -v kind &> /dev/null; then
    echo "Kind is not installed. Please install it from https://kind.sigs.k8s.io/docs/user/quick-start/"
    exit 1
fi

# Check if the cluster with same name already is created
if kind get clusters | grep -q "$CLUSTER_NAME"; then
    echo "Kind cluster '$CLUSTER_NAME' already exists."
    exit 1
fi

# Create our kind cluster after verification
echo "Hold on for your cluster to create"
echo "Creating Kind cluster with the name'$CLUSTER_NAME'..."
kind create cluster --name "$CLUSTER_NAME"

kubectl config use-context "kind-$CLUSTER_NAME"

# Download the kubeconfig to a default location for kubeconfig files
kind get kubeconfig --name "$CLUSTER_NAME" > "$HOME/.kube/config-kind-$CLUSTER_NAME"

# Verify if our cluster was set correctly
kubectl cluster-info







