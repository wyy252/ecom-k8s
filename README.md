# Deployment Strategy

This project uses the RollingUpdate deployment strategy for Kubernetes deployments.

## Reason

Rolling updates are simple, reliable, and supported directly by Kubernetes Deployments. They allow new pods to be created gradually while old pods are terminated step by step.

## Benefits

- No full service interruption during updates
- Easy to manage in a local Minikube environment
- Suitable for this project because the services are small and independently deployed

## Environment Usage

The same rolling update strategy is used in dev, staging, and prod namespaces. This keeps the deployment behavior consistent across environments.