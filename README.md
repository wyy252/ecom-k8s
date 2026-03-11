# Phase7
# Deployment Strategy

This project uses the RollingUpdate deployment strategy for Kubernetes deployments.

## Benefits

- Easy to manage in a local Minikube environment
- Suitable for this project because the services are small and independently deployed

## Environment Usage

The same rolling update strategy is used in dev, staging, and prod namespaces. This keeps the deployment behavior consistent across environments.