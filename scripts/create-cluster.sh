#!/bin/bash

# Creating the KIND cluster
kind create cluster --name k8s-nginx-demo --config - <<EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
EOF

# Verifying the cluster
kubectl cluster-info --context kind-k8s-nginx-demo